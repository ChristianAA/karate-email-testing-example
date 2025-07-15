Feature: Get Received Emails

  @ignore
  Scenario: Get Received Emails
  """
    input(must be defined before calling this feature):
    output: response
  """
    Given url MAILPIT_URL
    And path global.all_messages
    When method get
    Then status 200