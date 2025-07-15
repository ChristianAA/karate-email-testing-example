@emails
Feature: EMAIL VALIDATIONS

  Background:
    Given call read('classpath:features/common_resources/delete-all-emails.feature')

  Scenario Outline: Email is sent and received with correct from, to, subject and body
    Given call read('classpath:features/common_resources/get-received-emails.feature')
    And match response.total == 0
    When call read('classpath:features/common_resources/send-email.feature') {from: '<from>', to: '<to>', subject: '<subject>', body: '<body>'}
    And call read('classpath:features/common_resources/get-received-emails.feature')
    Then match response.total == 1
    * match response.messages[0].To[0].Address == '<to>'
    * match response.messages[0].From.Address == '<from>'
    * match response.messages[0].Subject == '<subject>'
    * match response.messages[0].Snippet == '<body>'

    Examples:
      | from             | to             | subject    | body                 |
      | example@from.com | example@to.com | Test email | This is a test email |
