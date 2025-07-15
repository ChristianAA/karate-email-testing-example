Feature: Set Global Test Variables

@ignore
Scenario: Set Global Test Variables

    # JAVA HELPERS INSTANCE
    * def emailSender = Java.type('com.example.karate.helpers.EmailSender')

    # MAILPIT ENDPOINTS
    * def all_messages = 'messages'