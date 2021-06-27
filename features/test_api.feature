Feature: Test query SQL

  Scenario: Test query of sandbox
    Given Connect to Sandbox Database
    When The query is excuted
      """
      SELECT private
      FROM jobhop_staging.cv
      WHERE cv_id = '0dc68dc6-937e-4354-961a-5c104e9d9a8f';
      """
    Then The result will be matched with table:

  Scenario: test scenario
    Given Connect to Sandbox Database
      And Setup Table:
        | Username | Password |
        | John     | 123456   |
        | Jerry    | 654321   |
    When The query is excuted
      """
      SELECT private
      FROM jobhop_staging.cv
      WHERE cv_id = '0dc68dc6-937e-4354-961a-5c104e9d9a8f';
      """
    Then The Given Data should match
        | Username | Password |
        | John     | 123456   |
        | Jerry    | 654321   |


