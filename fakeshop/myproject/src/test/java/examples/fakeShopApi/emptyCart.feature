# new feature
# Tags: optional

Feature: A description
    Background:
        * url 'http://api.fakeshop-api.com'
        * call read('userSignIn.feature')
    Scenario: Empty cart

        Given path 'carts', 'emptyCart'
        And header Authorization = 'Bearer ' + token
        When method post
        Then status 201
        And match response == {"message": 'Cart is now empty'}
        * print response

