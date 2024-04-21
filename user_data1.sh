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
    <title>Design and Automate a Secure Multi-VPC AWS Infrastructure Deployment using Terraform</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: pink; /* Changed background color to pink */
        }
        .header {
            background-color: #007bff;
            color: white;
            padding: 20px;
            text-align: center;
            position: relative; /* Add position relative */
        }
        .author {
            position: absolute;
            top: 60px; /* Adjust top position */
            right: 20px;
            color: #333;
            font-size: 14px;
        }
        .content {
            padding: 20px;
        }
        .content h2 {
            color: #007bff;
        }
        .content p {
            line-height: 1.6;
        }
        .footer {
            background-color: #f0f0f0;
            padding: 20px;
            text-align: center;
        }
        .footer p {
            color: #777;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>Design and Automate a Secure Multi-VPC AWS Infrastructure Deployment using Terraform</h1>
        <div class="author"> <!-- Moved author text inside header div -->
            <p>Created by Filza Romaan</p>
        </div>
    </div>
    <div class="content">
        <h2>Introduction</h2>
        <p>Terraform, as a leading infrastructure as code tool, is constantly evolving to meet the changing demands of modern IT environments. Here, we explore some anticipated future enhancements in Terraform.</p>
        
        <h2>Potential Enhancements</h2>
        <ul>
            <li>Enhanced support for serverless architectures</li>
            <li>Declarative configuration for complex networking setups</li>
            <li>Integration with emerging cloud technologies like edge computing</li>
            <li>Improved collaboration features for large-scale projects</li>
            <li>Advanced machine learning capabilities for infrastructure optimization</li>
        </ul>
        
        <h2>Conclusion</h2>
        <p>The future of Terraform holds exciting possibilities, with enhancements that promise to streamline infrastructure management and drive innovation in the cloud computing landscape.</p>
    </div>
    <div class="footer">
        <p>© 2024 Dalhousie University. All rights reserved</p>
    </div>
</body>
</html>

# Start and enable Apache service
systemctl start apache2
systemctl enable apache2
systemctl restart apache2
