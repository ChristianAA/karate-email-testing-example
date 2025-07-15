Feature: Delete All Emails

  @ignore
  Scenario: Delete All Emails
  """
    input(must be defined before calling this feature):
    output:
  """
    Given url MAILPIT_URL
    And path global.all_messages
    When method delete
    Then status 200