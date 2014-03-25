import geb.spock.GebReportingSpec

import spock.lang.*

import pages.*

@Stepwise
class PostCreateSpec extends GebReportingSpec {

  final def NO_TITLE = ""
  final def NO_BODY = ""

  def "should be able to create a post"() {

    when:
    to CreatePostPage
    createPost("title", "body")

    then:
    at ListPostsPage
  }

  def "shouldn't allow posts without a title"() {

    when:
    to CreatePostPage
    createPost(NO_TITLE, "body")

    then:
    at CreatePostPage
    titleHasError()
  }

  def "shouldn't allow posts without a body"() {

    when:
    to CreatePostPage
    createPost("title", NO_BODY)

    then:
    at CreatePostPage
    bodyHasError()
  }
}