<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="house_log.aspx.cs" Inherits="final_project.house_log" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* General body and container styles */
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #eef2f3;
            margin: 0;
            padding: 0;
            overflow-x: hidden;
        }
        .container {
            margin-top: 60px;
            max-width: 600px;
        }
        .card {
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            background-color: #ffffff;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 16px rgba(0, 0, 0, 0.2);
        }
        .card-body {
            padding: 40px;
        }

        /* Typography and headings */
        h3 {
            font-family: 'Poppins', sans-serif;
            color: #222;
            font-size: 24px;
            margin-bottom: 20px;
            text-transform: uppercase;
            letter-spacing: 1.5px;
        }
        label {
            font-size: 14px;
            color: #666;
            text-transform: uppercase;
        }

        /* Buttons */
        .btn-info {
            background-color: #5bc0de;
            border-color: #46b8da;
            color: white;
            font-size: 16px;
            padding: 12px 20px;
            width: 100%;
            margin-bottom: 15px;
            cursor: pointer;
            border-radius: 6px;
            transition: background-color 0.4s ease, transform 0.3s ease;
        }
        .btn-info:hover {
            background-color: #31b0d5;
            transform: translateY(-3px);
        }

        /* Form styling */
        .form-control {
            border: 1px solid #ccc;
            padding: 12px;
            font-size: 14px;
            border-radius: 4px;
            width: 100%;
            margin-bottom: 20px;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }
        .form-control:focus {
            border-color: #5bc0de;
            box-shadow: 0 0 6px rgba(91, 192, 222, 0.5);
        }

        /* Image styles */
        img {
            border-radius: 50%;
            margin-bottom: 20px;
        }

        /* Divider */
        hr {
            border-top: 2px solid #5bc0de;
            margin: 20px 0;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                padding: 15px;
            }
            h3 {
                font-size: 20px;
            }
        }
    </style>

    <script>
        // JavaScript for additional interactivity
        window.onload = function () {
            const btnRegister = document.querySelector('#<%= Button1.ClientID %>');
            const btnLogin = document.querySelector('#<%= Button2.ClientID %>');
            
            // Button click animations
            btnRegister.addEventListener('click', function () {
                btnRegister.style.transform = 'scale(0.98)';
                setTimeout(() => {
                    btnRegister.style.transform = 'scale(1)';
                }, 150);
            });
            
            btnLogin.addEventListener('click', function () {
                btnLogin.style.transform = 'scale(0.98)';
                setTimeout(() => {
                    btnLogin.style.transform = 'scale(1)';
                }, 150);
            });
            
            // Form validation on submit
            btnLogin.addEventListener('click', function (event) {
                const memberId = document.querySelector('#<%= TextBox1.ClientID %>');
                const password = document.querySelector('#<%= TextBox2.ClientID %>');
                if (memberId.value === '' || password.value === '') {
                    alert('Please fill in all fields.');
                    event.preventDefault();
                }
            });
        };
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col text-center">
                                <img src="images/happy_10878604.png"  width="150px"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col text-center">
                                <h3>Elder house Logging</h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label for="memberId">House ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Enter your member ID"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label for="password">Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" TextMode="Password" placeholder="Enter your password"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Button class="btn btn-info btn-block btn-lg" ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
                        </div>
                        <div class="form-group">
                            <asp:Button class="btn btn-info btn-block btn-lg" ID="Button2" runat="server" Text="Log-in" OnClick="Button2_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
