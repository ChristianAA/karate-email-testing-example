package com.example.karate.helpers;

import org.simplejavamail.api.email.Email;
import org.simplejavamail.api.mailer.Mailer;
import org.simplejavamail.api.mailer.config.TransportStrategy;
import org.simplejavamail.email.EmailBuilder;
import org.simplejavamail.mailer.MailerBuilder;

public class EmailSender {

    public static void sendEmail(String fromEmail, String toEmail, String subject, String body) {
        Email email = EmailBuilder.startingBlank()
                .from(fromEmail)
                .to(toEmail)
                .withSubject(subject)
                .withPlainText(body)
                .buildEmail();

        Mailer mailer = MailerBuilder
                .withSMTPServer("localhost", 1025, "user1", "pass1")
                .withTransportStrategy(TransportStrategy.SMTP)
                .buildMailer();

        mailer.sendMail(email);
        System.out.println("Email sent.");
    }
}