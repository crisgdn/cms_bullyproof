<?php
if($_SERVER["REQUEST_METHOD"] == "POST") {
    // Sanitize and validate name
    $name = filter_var($_POST["name"], FILTER_SANITIZE_STRING);
    if(empty($name)) {
        die("Name is required");
    }

    // Sanitize and validate email address
    $email = filter_var($_POST["email"], FILTER_SANITIZE_EMAIL);
    if(!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        die("Invalid email address");
    }

    // Sanitize message
    $message = filter_var($_POST["message"], FILTER_SANITIZE_STRING);
    if(empty($message)) {
        die("Message is required");
    }

    
    // Prepare email message
    $to = "info@hiralshahh.com";
    $subject = "New contact message from $name";
    $body = "Name: $name\nEmail: $email\n\nMessage:\n$message";

    // if mail is send show the message "Thank you for contacting us" on same page
    if(mail($to, $subject, $body)) {
        echo "Thank you for contacting us";
    } else {
        echo "There was a problem sending the email.";
    }
}
?>
