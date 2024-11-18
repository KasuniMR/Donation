<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="user_profile.aspx.cs" Inherits="final_project.user_profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid mt-5">
        <div class="row">
            <div class="col-md-5">
                <div class="card shadow-sm">
                    <div class="card-body">
                        <center>
                            <img src="images/cowboy_6543179.png" width="100px" />
                            <h4 class="mt-3">Your Profile</h4>
                            <span>Account Status: </span>
                            <asp:Label CssClass="badge badge-pill badge-info" ID="Label1" runat="server" Text="Active"></asp:Label>
                        </center>
                        <hr />
                        <div class="form-row">
                            <div class="col-md-6">
                                <label>Full Name</label>
                                <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Enter your name"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <label>Date of Birth</label>
                                <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Enter your birth date" TextMode="Date"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-row mt-3">
                            <div class="col-md-6">
                                <label>Contact Number</label>
                                <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Enter your contact number" TextMode="Number"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <label>Email</label>
                                <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Enter your email" TextMode="Email"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-row mt-3">
                            <div class="col-md-4">
                                <label>State</label>
                                <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                                    <asp:ListItem Text="Select" Value="" />
                                    <asp:ListItem Text="Thulakshana" Value="Thulakshana" />
                                    <asp:ListItem Text="Sihara" Value="Sihara" />
                                    <asp:ListItem Text="Mawitha" Value="Mawitha" />
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-4">
                                <label>City</label>
                                <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Enter city"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <label>Pincode</label>
                                <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Enter pincode"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-row mt-3">
                            <div class="col">
                                <label>Full Address</label>
                                <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Enter full address" TextMode="MultiLine"></asp:TextBox>
                            </div>
                        </div>

                        <div class="row mt-3">
                            <div class="col">
                                <span class="badge badge-pill badge-info">Login Credentials</span>
                            </div>
                        </div>

                        <div class="form-row mt-3">
                            <div class="col-md-4">
                                <label>User ID</label>
                                <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" ></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                Account Status
                                <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" ></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <label>New Password</label>
                                <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>

                        <div class="row mt-4">
                            <div class="col-8 mx-auto">
                                <center>
                                    <asp:Button CssClass="btn btn-info btn-lg btn-block" ID="button1" runat="server" Text="Update Profile" OnClick="button1_Click" />
                                </center>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-7">
                <div class="card shadow-sm">
                    <div class="card-body">
                        <center>
                            <img src="images/time-management_10110253%20(1).png"  width="100px"/>
                            <h4 class="mt-3">Your Activities</h4>
                            <span>Account Info: </span>
                            <asp:Label CssClass="badge badge-pill badge-info" ID="Label2" runat="server" Text="Activity details"></asp:Label>
                        </center>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [elder_id], [date], [things] FROM [don]"></asp:SqlDataSource>
                         
                        <hr />
                        <asp:GridView class="table table-striped table-bordered"  ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="elder_id" HeaderText="elder_id" SortExpression="elder_id" />
                                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                                <asp:BoundField DataField="things" HeaderText="things" SortExpression="things" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
