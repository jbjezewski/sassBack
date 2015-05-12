package sassback
//@Grab('mysql:mysql-connector-java:5.1.31')
//@GrabConfig(systemClassLoader = true)
@GrabConfig(systemClassLoader = true)
@Grab(group='mysql', module='mysql-connector-java', version='5.1.31')
import groovy.sql.Sql
import java.sql.Connection
import java.sql.DriverManager
import javax.sql.DataSource



class questionSassController {
    //Connection conn = java.sql.DriverManager.getConnection(
   //         "url":"jdbc:mysql://localhost:3306/sassback?user=sass&password=mysql");
    def db = [url:'jdbc:mysql://sassBack:3306/sassback?autoreconnect=true', user:'sass',
              password:'mysql',driver:'com.mysql.jdbc.Driver']

    def sql = Sql.newInstance(db.url, db.user, db.password, db.driver);
   /* def sql = Sql.newInstance(
            'jdbc:mysql://localhost:3306/sassback',
            'sass',
            'mysql',
            'com.mysql.jdbc.Driver'
    )*/
    //Sql sql = new Sql(conn);

    def list1 = []
    def list2 = []
    def list3 = []
    def list4 = []

    def rows = sql.rows("select * from sassback.questions WHERE question_id LIKE ?", ['q%']) {
        if (row.question_text.indexOf("q1") != -1) {
             list1.addAll(list1.size(), sql.rows[question_text])
        }else if (row.question_text.indexOf("q2") != -1) {
            list2.addAll(list2.size(), sql.rows[question_text])
        }else if (row.question_text.indexOf("q3") != -1) {
            list3.addAll(list3.size(), sql.rows[question_text])
        }else if (row.question_text.indexOf("q4") != -1) {
            list4.addAll(list4.size(), sql.rows[question_text])
        }

    }
    /*sql.eachRow("select * from sassback.questions WHERE question_id LIKE 'q%'"){row ->
        if(row.question_id.indexOf("q1") != -1) {
            list1.addAll($ { row.q1_message })
        }
    }*/
    //sql.close()
    def index() { 
        //def list1 = ['Extreme Sass','Reasonable Sass','Normal Sass']
        [ list1:list1 ]
       // def list2 = ['Unforgivable','I can never trust again','I can probably recover if you give me some nachos','I will probably forget about this in the next 30 seconds and will wonder why I\'m at this site.']
        [ list2:list2 ]
       // def list3 = ['Not justified at all, I swear','Sort of justified, to be honest','Out of nowhere, I still don\'t know who the sass-talker is.']
        [ list3:list3 ]
       // def list4 = ['Work','Family','Being Right','Faith','Escaping Boredom','I treat all priorities equally','None - I don\'t recognize any priorities\' right to my allegiance.']
        [ list1:list1,list2:list2,list3:list3,list4:list4 ]
    }
}
