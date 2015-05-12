<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>SassBack</title>
    <style type="text/css" media="screen">
    #status {
        background-color: #eee;
        border: .2em solid #fff;
        margin: 2em 2em 1em;
        padding: 1em;
        width: 90%;
        float: left;
        -moz-box-shadow: 0px 0px 1.25em #ccc;
        -webkit-box-shadow: 0px 0px 1.25em #ccc;
        box-shadow: 0px 0px 1.25em #ccc;
        -moz-border-radius: 0.6em;
        -webkit-border-radius: 0.6em;
        border-radius: 0.6em;
    }

    .ie6 #status {
        display: inline;
    }

    #status ul {
        font-size: 0.9em;
        list-style-type: none;
        margin-bottom: 0.6em;
        padding: 0;
    }

    #status li {
        line-height: 1.3;
    }

    #status h1 {
        text-transform: uppercase;
        font-size: 1.1em;
        margin: 0 0 0.3em;
    }

    #page-body {
        margin: 2em 1em 1.25em 18em;
    }

    h2 {
        margin-top: 1em;
        margin-bottom: 0.3em;
        font-size: 1em;
    }

    p {
        line-height: 1.5;
        margin: 0.25em 0;
    }

    #controller-list ul {
        list-style-position: inside;
    }

    #controller-list li {
        line-height: 1.3;
        list-style-position: inside;
        margin: 0.25em 0;
    }

    @media screen and (max-width: 480px) {
        #status {
            display: none;
        }

        #page-body {
            margin: 0 1em 1em;
        }

        #page-body h1 {
            margin-top: 0;
        }
    }
    </style>
</head>
<body>
<div id="status" role="complementary">
        <h1>Please answer the following questions:</h1>
        <h4>What is the level of sass involved?</h4>
        <ul> </ul>
        <select>
            <g:each var="listoption1" in="${list1}">
                <option value="${listoption1}">${listoption1}</option>
            </g:each>
        </select>
    <ul> </ul>
    <h4>How forgivable is the sass-talking?</h4>
    <ul> </ul>

    <select>
            <g:each var="listoption2" in="${list2}">
                <option value="${listoption2}">${listoption2}</option>
            </g:each>
        </select>
    <ul> </ul>

    <h4>How justified was the sass in question?</h4>
    <ul> </ul>

    <select>
            <g:each var="listoption3" in="${list3}">
                <option value="${listoption3}">${listoption3}</option>
            </g:each>
        </select>
    <ul> </ul>

    <h4>What is your highest priority?</h4>
    <ul> </ul>

    <select>
            <g:each var="listoption4" in="${list4}">
                <option value="${listoption4}">${listoption4}</option>
            </g:each>
        </select>
</div>
<a class="twitter-timeline" href="https://twitter.com/SassSolutions" data-widget-id="504624975244849152">Tweets by @SassSolutions</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
</body>
</html>