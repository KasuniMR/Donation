<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home_page.aspx.cs" Inherits="final_project.home_page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Internal CSS for page styling -->
    <style>
        body {
            background-color: #fefefe; /* Light background for the whole page */
            color: #333; /* Default text color */
        }
        .hero {
            background: url('images/banner-bg.png') no-repeat center center/cover;
            height: 800px;
            padding: 60px 0;
            color: white;
        }
        .hero h1 {
            font-size: 3rem;
            font-weight: bold;
            margin-bottom: 20px;
        }
        .hero p {
            font-size: 1.4rem;
            margin-bottom: 40px;
        }
        .btn-custom {
            padding: 12px 30px;
            font-size: 1.2rem;
            border-radius: 30px;
            transition: all 0.3s ease;
        }
        .btn-light-custom {
            background-color: #f8f9fa;
            color: #333;
        }
        .btn-light-custom:hover {
            background-color: #e2e6ea;
        }
        .btn-outline-custom {
            padding: 12px 25px;
            font-size: 1.1rem;
            border: 2px solid #007bff;
            border-radius: 30px;
            transition: all 0.3s ease;
        }
        .btn-outline-custom:hover {
            background-color: #007bff;
            color: white;
        }
        .about-us {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 40px;
            border-radius: 10px;
            color: #333;
            margin-top: 20px; /* Space between sections */
        }
        .about-us h2 {
            font-size: 2.5rem;
            font-weight: bold;
        }
        .about-us p {
            font-size: 1.2rem;
            color: #555;
        }
        .section-title {
            font-size: 2rem;
            font-weight: bold;
            margin-bottom: 20px;
        }
        .feature-icon {
            width: 150px;
        }
        .story-card {
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px; /* Spacing between story cards */
        }
        .blockquote {
            background-color: #f8f9fa;
            padding: 20px;
            border-radius: 10px;
            margin-bottom: 20px; /* Space between blockquotes */
        }
        .cta-section {
            background-color: #007bff;
            color: white;
            padding: 60px 0;
        }
        .cta-section a {
            margin: 10px; /* Space between buttons */
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!-- Hero Section -->
<section class="hero text-center d-flex flex-column justify-content-center align-items-center">
    <div class="container text-center" style="max-width: 900px;">
        <h1>Make the World a Better Place</h1>
        <p>Join us in our mission to help those in need</p>
        <a href="user_sign_up.aspx" class="btn btn-light-custom btn-custom">Get Involved</a>
        <a href="donate.aspx" class="btn btn-primary btn-custom">Donate Now</a>
    </div>
</section>

<!-- Who We Are Section -->


<!-- Our Impact Section -->
<section class="my-5">
    <div class="container">
        <div class="row text-center mb-4">
            <div class="col-12">
                <h2 class="section-title">Our Impact</h2>
                <p>Discover how your contributions make a difference in the lives of those in need.</p>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 text-center">
                <img src="images/baby-feeding%20(1).png"  class="feature-icon"/>
                <h4>Feeding the Hungry</h4>
                <p>Providing meals and essential supplies to families in need, ensuring no one goes hungry.</p>
            </div>
            <div class="col-md-4 text-center">
                <img src="images/home.png" class="feature-icon" alt="Shelter and Care" />
                <h4>Shelter and Care</h4>
                <p>Offering safe housing solutions for the homeless and those affected by disasters.</p>
            </div>
            <div class="col-md-4 text-center">
                <img src="images/heart-rate-monitor.png" class="feature-icon" alt="Wellness and Healing"/>
                <h4>Wellness and Healing</h4>
                <p>Providing healthcare services and emotional support for those recovering from hardship.</p>
            </div>
        </div>
        <div class="text-center mt-4">
            <a href="get_involved.aspx" class="btn btn-primary btn-custom">Get Involved</a>
        </div>
    </div>
</section>

    <section class="my-5">
    <div class="container">
        <div class="row text-center mb-4">
            <div class="col-12">
                <h2 class="section-title">Registered Houses</h2>
                <p>Discover how your contributions make a difference in the lives of those in need.</p>
            </div>
        </div>

        <div class="row">
            

            <asp:GridView  class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="user_id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="DoB" HeaderText="DoB" SortExpression="DoB" />
                    <asp:BoundField DataField="contact" HeaderText="contact" SortExpression="contact" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                    <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                    <asp:BoundField DataField="pincode" HeaderText="pincode" SortExpression="pincode" />
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                    <asp:BoundField DataField="user_id" HeaderText="user_id" ReadOnly="True" SortExpression="user_id" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                    <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                </Columns>
            </asp:GridView>



            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [bbh]"></asp:SqlDataSource>



        </div>
        <div class="text-center mt-4">
            <a href="reg_log.aspx" class="btn btn-primary btn-custom">Register your company here</a>
        </div>
    </div>
</section>

<!-- Success Stories Section -->
<section style="background-color: #f8f9fa; padding: 60px 0;">
    <div class="container">
        <div class="row text-center">
            <div class="col-12">
                <h2 class="section-title">Success Stories</h2>
                <p>Read about how our charity has impacted lives across the globe.</p>
            </div>
        </div>

        <div class="row mt-4">
            <div class="col-md-4 text-center">
                <div class="story-card">
                  
                    <img src="images/img-3.png" class="img-fluid mb-3" style="border-radius: 10px;">
                    <h5>Bringing Hope to Families</h5>
                    <p>Through our food drive, we helped feed over 10,000 families last year.</p>
                </div>
            </div>
            <div class="col-md-4 text-center">
                <div class="story-card">
                    <img src="images/img-4.png"  class="img-fluid mb-3" style="border-radius: 10px;">
                    <h5>A Safe Home for the Homeless</h5>
                    <p>We provided emergency shelter to those affected by natural disasters, giving them a place to stay and rebuild.</p>
                </div>
                
            </div>
            <div class="col-md-4 text-center">
                <div class="story-card">
                    <img src="images/img-3.png"  class="img-fluid mb-3" style="border-radius: 10px;">
                   
                    
                    <h5>Access to Medical Care</h5>
                    <p>Our health initiative provided free medical checkups and treatments to remote areas.</p>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Testimonials Section -->
<section class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-12 text-center">
                <h2 class="section-title">What People Are Saying</h2>
                <p>Hear from our volunteers and beneficiaries about their experiences with our charity.</p>
            </div>
        </div>

        <div class="row mt-4">
            <div class="col-md-4 text-center">
                <blockquote class="blockquote">
                    <p>"Volunteering with this charity has been a life-changing experience. It's amazing to see the impact firsthand."</p>
                    <footer class="blockquote-footer">John Doe, Volunteer</footer>
                </blockquote>
            </div>
            <div class="col-md-4 text-center">
                <blockquote class="blockquote">
                    <p>"They helped me and my family when we needed it most. I am forever grateful for their kindness and support."</p>
                    <footer class="blockquote-footer">Jane Smith, Beneficiary</footer>
                </blockquote>
            </div>
            <div class="col-md-4 text-center">
                <blockquote class="blockquote">
                    <p>"This organization is truly making a difference, and I feel proud to be a part of their efforts."</p>
                    <footer class="blockquote-footer">Emily Johnson, Donor</footer>
                </blockquote>
            </div>
        </div>
    </div>
</section>

<!-- Call to Action Section -->
<section class="cta-section text-center">
    <div class="container">
        <h2>Make a Lasting Impact</h2>
        <p>Your contribution—whether through donations, volunteering, or advocacy—can drive meaningful change in our community.</p>
        <a href="donate.aspx" class="btn btn-light-custom btn-custom">Contribute Now</a>
        <a href="volunteer.aspx" class="btn btn-outline-light btn-outline-custom">Join Our Volunteer Team</a>
    </div>
</section>


</asp:Content>
