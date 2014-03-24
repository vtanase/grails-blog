<%@ page import="com.vlad.blog.Post" %>

<div class="form-group fieldcontain ${hasErrors(bean: postInstance, field: 'title', 'has-error')}">
  <label for="title" class="col-md-2 control-label">
    <g:message code="post.title.label" default="Title" />
  </label>
  <div class="col-md-10">
    <g:textField name="title" maxlength="50" value="${postInstance?.title}" class="form-control"/>
  </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: postInstance, field: 'body', 'has-error')}">
  <label for="body" class="col-md-2 control-label">
    <g:message code="post.body.label" default="Body" />
  </label>
  <div class="col-md-10">
    <g:textArea name="body" cols="40" rows="10" maxlength="10000" value="${postInstance?.body}" class="form-control"/>
  </div>
</div>

