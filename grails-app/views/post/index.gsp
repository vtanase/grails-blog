
<%@ page import="com.vlad.blog.Post" %>
<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
  </head>
  <body>
    <div class="row">
      <div class="col-md-8 col-md-push-2">
        <nav class="navbar navbar-default" role="navigation">
          <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
              <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
              <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
          </div>
        </nav>
      </div>
    </div>
    <div class="row">
      <div class="col-md-6 col-md-push-2">
        <div id="list-post" class="content scaffold-list" role="main">
          <h2><g:message code="default.list.label" args="[entityName]" /></h2>
          <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
          </g:if>
          <table class="table table-bordered">
            <thead>
              <tr>
                <g:sortableColumn property="title" title="${message(code: 'post.title.label', default: 'Title')}" />
                <g:sortableColumn property="body" title="${message(code: 'post.body.label', default: 'Body')}" />
              </tr>
            </thead>
            <tbody>
              <g:each in="${postInstanceList}" status="i" var="postInstance">
                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                  <td><g:link action="show" id="${postInstance.id}">${fieldValue(bean: postInstance, field: "title")}</g:link></td>
                  <td>${fieldValue(bean: postInstance, field: "body")}</td>
                </tr>
              </g:each>
            </tbody>
          </table>
          <div class="pagination">
            <g:paginate total="${postInstanceCount ?: 0}" />
          </div>
        </div>
      </div>

      <div class="col-md-2 col-md-pull-2">
        <!-- second column goes here -->
      </div>
    </div>
  </body>
</html>
