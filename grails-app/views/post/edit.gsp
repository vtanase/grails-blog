<%@ page import="com.vlad.blog.Post" %>
<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
    <title><g:message code="default.edit.label" args="[entityName]" /></title>
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

        <div id="edit-post" class="content scaffold-edit" role="main">
          <h2><g:message code="default.edit.label" args="[entityName]" /></h2>

          <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
          </g:if>

          <g:hasErrors bean="${postInstance}">
            <ul class="alert alert-danger" role="alert">
              <g:eachError bean="${postInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
              </g:eachError>
            </ul>
          </g:hasErrors>

          <g:form url="[resource:postInstance, action:'update']" class="form-horizontal" method="PUT" >
            <g:hiddenField name="version" value="${postInstance?.version}" />
            <fieldset class="form">
              <g:render template="form"/>
            </fieldset>
            <fieldset class="buttons">
              <g:actionSubmit class="btn btn-primary pull-right" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
            </fieldset>
          </g:form>
        </div>
      </div>
      <div class="col-md-2 col-md-pull-2">
        <!-- space for 2nd column -->
      </div>
    </div>
  </body>
</html>
