<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="final_project.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Charity Organization</title>
    
    <!-- Internal CSS -->
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f7f7f7;
        }
        
        /* Header styling */
        header {
            background-color: #4CAF50;
            color: white;
            text-align: center;
            padding: 10px;
        }
        
        /* Navigation Bar */
        nav {
            display: flex;
            justify-content: space-around;
            background-color: #333;
        }
        
        nav a {
            padding: 14px 20px;
            display: block;
            color: white;
            text-align: center;
            text-decoration: none;
        }
        
        nav a:hover {
            background-color: #4CAF50;
        }
        
        /* Hero Section */
        .hero {
            background-image: url('charity-hero.jpg');
            background-size: cover;
            background-position: center;
            height: 400px;
            text-align: center;
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 30px;
            font-weight: bold;
        }
        
        /* Section styling */
        section {
            padding: 40px;
            text-align: center;
        }

        .container {
            display: flex;
            justify-content: space-around;
            margin-top: 20px;
        }
        
        .card {
            width: 30%;
            background-color: white;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        
        .card img {
            max-width: 100%;
            height: auto;
            border-radius: 5px;
        }
        
        /* Footer styling */
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 20px;
            margin-top: 40px;
        }

        /* Buttons */
        .donate-btn {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .donate-btn:hover {
            background-color: #45a049;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                flex-direction: column;
                align-items: center;
            }

            .card {
                width: 80%;
                margin-bottom: 20px;
            }
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Header -->
            <header>
                <h1>Welcome to Charity Organization</h1>
                <p>Making the World a Better Place</p>
            </header>

            <!-- Navigation -->
            <nav>
                <a href="#">Home</a>
                <a href="#">About Us</a>
                <a href="#">Our Projects</a>
                <a href="#">Donate</a>
                <a href="#">Contact Us</a>
            </nav>

            <!-- Hero Section -->
            <div class="hero">
                <div>Join Us in Helping Communities</div>
            </div>

            <!-- About Section -->
            <section>
                <h2>Our Mission</h2>
                <p>We aim to support communities in need through various charitable initiatives. Join us to make a positive difference in the world.</p>
                
                <!-- Cards -->
                <div class="container">
                    <div class="card">
                        <img src="food-distribution.jpg" alt="Food Distribution" />
                        <h3>Food Distribution</h3>
                        <p>We organize food distribution drives to ensure that no one goes to bed hungry.</p>
                        <button class="donate-btn" onclick="showAlert()">Donate Now</button>
                    </div>
                    <div class="card">
                        <img src="education.jpg" alt="Education Programs" />
                        <h3>Education Programs</h3>
                        <p>We believe in the power of education. Support our programs to provide learning opportunities for children in need.</p>
                        <button class="donate-btn" onclick="showAlert()">Donate Now</button>
                    </div>
                    <div class="card">
                        <img src="medical-care.jpg" alt="Medical Care" />
                        <h3>Medical Care</h3>
                        <p>We provide medical assistance to underserved communities. Help us bring healthcare to those who need it most.</p>
                        <button class="donate-btn" onclick="showAlert()">Donate Now</button>
                    </div>
                </div>
            </section>

            <!-- Footer -->
            <footer>
                <p>© 2024 Charity Organization. All rights reserved.</p>
            </footer>

            <!-- Internal JavaScript -->
            <script>
                function showAlert() {
                    alert("Thank you for your generosity! Together, we can make a difference.");
                }
            </script>
        </div>
    </form>
</body>
</html>
