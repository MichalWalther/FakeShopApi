# new feature
# Tags: optional

Feature: A description
  Background:
    * url 'http://api.fakeshop-api.com'

  Scenario: Get all products with laptop category and save to json file
    Given path 'products', 'getAllProducts'
    When method get
    Then status 201
    * print response
    * def result = response.products
    * def condition = function(x){ return x.category == 'laptop'}
    * def filtered = karate.filter(result, condition)
    * print filtered

    * string json = filtered
    * karate.write(json, '../src/test/java/examples/fakeShopApi/laptop.json')