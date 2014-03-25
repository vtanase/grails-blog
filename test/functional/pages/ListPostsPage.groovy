package pages

import geb.Page

class ListPostsPage extends Page {

  static url = "post/index"

  static at = {
    title == "Post List"
  }
}