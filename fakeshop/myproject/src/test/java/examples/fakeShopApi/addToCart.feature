# new feature
# Tags: optional

Feature: A description
    Background:
        * url 'http://api.fakeshop-api.com'
        * call read('userSignIn.feature')
        * def laptop = read('laptop.json')
  Scenario Outline: Add to cart
      * def addToBasket =
      """
       {
            "id":<id>
        }
      """
    Given path 'carts', 'addToCart'
    And header Authorization = 'Bearer ' + token
    And request addToBasket
    When method post
    Then status 201
    And match response == {"message": 'Product added to cart'}
    * print response

Examples:
    |laptop|