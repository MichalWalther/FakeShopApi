# new feature
# Tags: optional

Feature: A description
    Background:
        * url 'http://api.fakeshop-api.com'
  Scenario: User Sign Up
      * def signUp =
      """
        {
            "email":"wally779@wally.com",
            "password":"123456"
        }
      """
    Given path 'users', 'signup'
    And request signUp
    When method post
    Then status 201
    And match response contains deep {"token": '#string'}
    * print response
    * def token = response.token