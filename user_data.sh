#!/bin/bash

apt-get update
apt-get install -y apache2

# Write the HTML content to the index.html file
cat <<HTML > /var/www/html/index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Terraform Project on AWS</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            text-align: center;
        }
        .banner {
            background-color: #007bff;
            color: white;
            padding: 20px;
            margin-bottom: 20px;
        }
        .subheading {
            color: #333;
            font-size: 18px;
            margin-bottom: 20px;
        }
        .message {
            font-size: 24px;
            font-weight: bold;
            color: #ff5722;
            margin-bottom: 20px;
        }
        .heart {
            font-size: 36px;
            color: #e91e63;
        }
    </style>
</head>
<body>
    <div class="banner">
        <h1>Terraform Project on AWS</h1>
    </div>
    <div class="subheading">
        <p>Created by Filza Romaan</p>
    </div>
    <div class="message">
        <p>I know you will <span style="color: #4caf50;">rock</span> tomorrow</p>
    </div>
    <div class="message">
        <p>I <span class="heart">&#10084;</span> you more &#x1F618;!!</p>
    </div>
</body>
</html>
HTML

# Start and enable Apache service
systemctl start apache2
systemctl enable apache2
systemctl restart apache2
