Feature:

  Background:
    Given the following users exist
      | user_name | created_at               | private |
      | Thomas    | 2016-02-01T00:00:00.922Z | false   |
      | Mazen     | 2016-02-01T00:00:00.922Z | false   |
      | Tarek     | 2016-02-01T00:00:00.922Z | false   |
      | Ivan      | 2016-02-01T00:00:00.922Z | false   |
      | Anders    | 2016-02-01T00:00:00.922Z | true    |


  Scenario: Returning a JSON response
    Given: The API is running
    And the Accept Type is application/json
    And the client requests GET /api/v1/users
    Then a "200" status code is returned
    And the index JSON response should show info about:
      | user   |
      | Thomas |
      | Mazen  |
      | Tarek  |
      | Ivan   |


  Scenario: Retrieving a list of users
    Given: The API is running
    And the Accept Type is application/json
    And the client requests GET /api/v1/users
    Then a "200" status code is returned
    And the JSON should be:
        """
        {
          "users": [
            {
              "user_name": "Thomas",
              "profile": "http://example.org/api/v1/users/1"
            },
            {
              "profile": "http://example.org/api/v1/users/2",
              "user_name": "Mazen"
            },
            {
              "profile": "http://example.org/api/v1/users/3",
              "user_name": "Tarek"
            },
            {
              "user_name": "Ivan",
              "profile": "http://example.org/api/v1/users/4"
            }
          ]
        }
        """

  Scenario: Retrieving a single user
    Given: The API is running
    And the Accept Type is application/json
    And the client requests GET /api/v1/users/2
    Then a "200" status code is returned
    And the JSON should be:
        """
        {
          "user": {
              "user_name": "Mazen"
          }
        }
        """

