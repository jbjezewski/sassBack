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
        width: 12em;
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
<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Enter the Sassroom"/></a>
<div id="status" role="complementary">
    <h1>Sass:</h1>
    <ul>
        <li>noun</li>
        <li>1. impudent or disrespectful back talk:</li>
        <li>"Both parents refuse to take any sass from their kids."</li>
        <li></li>
        <li>verb (used with object)</li>
        <li>2. to answer back in an impudent manner:</li>
        <li>"Don't sass your mother."</li>
    </ul>
</div>
<div id="page-body" role="main">
    <h1>Welcome to SassBack, the world's favorite site for translating awkward silences into witty comebacks!</h1>
    <p>Congratulations, you have made an excellent choice in back-talking technology. </p>
</div>
<div id="controller-list" role="navigation">
    <ul>
        <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
            <g:if test="${c.fullName == 'sassback.StartingSassController'}">
            <li class="controller"><g:link controller="${c.logicalPropertyName}">Enter the Sassroom</g:link></li>
            </g:if>
        </g:each>
    </ul>
</div>
</body>
</html>
