# new feature
# Tags: optional

Feature: A description
    Background:
        * url 'http://api.fakeshop-api.com'
  Scenario: User Sign Up
      * def signIn =
      """
        {
            "email":"wally777@wally.com",
            "password":"123456"
        }
      """
    Given path 'users', 'signin'
    And request signIn
    When method post
    Then status 201
    And match response contains deep { "token": '#string'}
    * print response
    * def token = response.token
