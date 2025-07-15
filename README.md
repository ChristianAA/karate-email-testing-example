# Email Testing Example: Karate + Spring + Mailpit

This repository demonstrates an end-to-end email testing setup using Karate DSL, Spring Framework, and Mailpit as a local SMTP testing server.

## Overview

- Mailpit is launched locally via Docker to act as a mock SMTP server, capturing all outgoing emails.
- Karate includes a custom library to send emails from tests and automatically validate those emails by querying Mailpit's API.
- Email validations cover sender, recipient, subject, and body content to ensure email delivery correctness.

## How it works

- Mailpit runs locally in a Docker container, listening for SMTP traffic on port 1025 and exposing a web UI on port 8025.
- Karate utilities send emails which Mailpit intercepts and stores.
- Karate tests connect to Mailpit's API to verify the email data.

## Why use this setup?

- Automate email delivery tests without sending real emails.
- Validate email content and metadata programmatically within your integration or end-to-end tests.
- Simple Docker-based Mailpit setup requiring no external SMTP service or credentials

# Requirements

* JDK 18
* Maven >= 3.8.7
* Docker 
* Docker Compose

# Test Execution

1. Download or clone the repository
2. Open a terminal
3. Start Mailpit with Docker Compose:

   `docker-compose up -d`

This will start Mailpit on:

- **SMTP server:** `localhost:1025`
- **Web interface:** [http://localhost:8025](http://localhost:8025)

4. Run the test suite using Maven:

    `mvn clean test`

 The tests will send emails using Karate and verify they are received by Mailpit.

# Results

To view the test report, open the **'/karate-email-testing-example/target/karate-reports/karate-summary.html'** file once
the execution has finished.

There is another html report also in: **'/karate-email-testing-example/target/cucumber-html-reports/0'** folder.

# Links
    
   [Karate Framework](https://github.com/intuit/karate)

   [Mailpit](https://github.com/axllent/mailpit)