Feature: BUHO Menu Management API testing

  @successful
  Scenario: The menu is loaded
    Given Login to the admin page
    When the "get" request with uri "/api/dish/5/addons" is sent
    Then response status should be 200
