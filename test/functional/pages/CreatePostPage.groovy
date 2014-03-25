package pages

import geb.Page

class CreatePostPage extends Page {

  final def ERROR_CLASS = "has-error"

  static url = "post/create"
  static at = {
    title == "Create Post"
  }

  static content = {
    form {$(".form-horizontal")}
    submitButton {$("#create-btn")}
    titleFormGroup {$("#title").parents(".form-group")}
    bodyFormGroup {$("#body").parents(".form-group")}
  }

  void createPost(title, body) {
    form.title = title
    form.body = body
    submitButton.click();
  }

  def titleHasError() {
    ERROR_CLASS in titleFormGroup.classes()
  }

  def bodyHasError() {
    ERROR_CLASS in bodyFormGroup.classes()
  }

}