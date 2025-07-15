Feature: Send Email

  @ignore
  Scenario: Send Email
  """
    input(must be defined before calling this feature): from, to, subject, body
    output:
  """
  * global.emailSender.sendEmail(from, to, subject, body)