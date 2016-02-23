Feature: As developer of Project Unify API
  In order to make usage of my API easier
  I would like to make my api documentation accessible over internet

  @javascript
  Scenario: Access API documentation
    Given I generate the Swagger documentation
    Given I visit the "api" page
    Then open screenshot
    Then I should see "Project Unify API...."
    And I should see "Some description....."