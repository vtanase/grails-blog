package com.vlad.blog

import grails.test.mixin.TestFor
import spock.lang.Unroll
import spock.lang.Specification

/**
 * Class that tests the validations for a Post.
 */
@TestFor(Post)
class PostSpec extends Specification {

  def setup() {
    mockForConstraintsTests(Post)
  }

  def cleanup() {
  }

  @Unroll("test post all constraints #field is #error for value: #val")
  void "test post all constraints"() {
    when:
    def post = new Post("$field" : val)

    then:
    validateConstraints(post, field, error)

    where:
    error          | field            | val
    'nullable'     | 'title'          | null
    'nullable'     | 'title'          | ''
    'size'         | 'title'          | 'aa'
    'size'         | 'title'          | 'a'*51
    'nullable'     | 'body'           | null
    'nullable'     | 'body'           | ''
    'size'         | 'body'           | 'aa'
    'size'         | 'body'           | 'a'*10001
  }

  void validateConstraints(obj, field, error) {
    def validated = obj.validate()
    if (error && error != 'valid') {
      assert !validated
      assert obj.errors[field]
      assert error == obj.errors[field]
    } else {
      assert !obj.errors[field]
    }
  }
}
