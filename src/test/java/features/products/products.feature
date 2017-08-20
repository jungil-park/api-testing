Feature: Verify that products are properly returned by the API

  Background:
    * url 'http://localhost:3030'

  Scenario: Products are returned on GET

    Given   path 'products'
     When method get
     Then status 200

    #existing content of products.feature

  Scenario: Specific product has minimum required data to be displayed

    Given  path 'products/9132294'
    When method get
    Then status 200
     And  match $ contains { price: #notnull, description: #notnull, image: #notnull  }
     And  match $.categories contains { id: #notnull, name: #notnull, createdAt: #notnull, updatedAt: #notnull }