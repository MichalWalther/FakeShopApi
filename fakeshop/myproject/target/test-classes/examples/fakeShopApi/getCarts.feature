# new feature
# Tags: optional

Feature: A description
    Background:
        * url 'http://api.fakeshop-api.com'
        * call read('userSignIn.feature')
        * def laptop = read('laptop.json')
  Scenario Outline: Get carts
      Given path 'carts', 'getCart'
      And header Authorization = 'Bearer ' + token
      When method get
      Then status 201
      And match response.cart contains deep { "category": 'laptop'}
      * print response
      And match response.cart contains deep {"id": '#(id)', "price": '#(price)'}

    Examples:
      |laptop|