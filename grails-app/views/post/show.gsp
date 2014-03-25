
<%@ page import="com.vlad.blog.Post" %>
<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
  </head>
  <body>

    <div class="row">
      <div class="col-md-8 col-md-push-2">
        <nav class="navbar navbar-default" role="navigation">
          <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
              <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
              <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
              <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
          </div>
        </nav>
      </div>
    </div>
    <div class="row">
      <div class="col-md-6 col-md-push-2">
          <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
          </g:if>
        <div id="show-post" class="content scaffold-show" role="main">
          <h2><g:fieldValue bean="${postInstance}" field="title"/></h2>
          <hr/>
          <p>
            <g:fieldValue bean="${postInstance}" field="body"/>
          </p>
        </div>
      </div>
      <div class="col-md-2 col-md-pull-2">
        <!-- space for 2nd column -->
      </div>
    </div>


  </body>
</html>
