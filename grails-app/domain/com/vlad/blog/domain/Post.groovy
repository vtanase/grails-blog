package com.vlad.blog.domain

class Post {

  String title
  String body

  static constraints = {
    title size: 3..50
    body size: 3..10000
  }
}
