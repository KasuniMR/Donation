<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="house_profile.aspx.cs" Inherits="final_project.house_profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="container-fluid mt-5">
        <div class="row">
            <div class="col-md-5">
                <div class="card shadow-sm">
                    <div class="card-body">
                        <center>
                          <img src="images/equal_2243741.png" img width="100px"/>
                            <h4 class="mt-3">Your elder house Profile</h4>
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
                                <label>Date of commencement</label>
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
                              <asp:Button  CssClass="btn btn-info btn-lg btn-block" ID="Button1" runat="server" Text="Update profile" OnClick="Button1_Click"></asp:Button>     
<asp:Button  CssClass="btn btn-info btn-lg btn-block"  ID="Button2" runat="server" Text="Delete" OnClick="Button2_Click"></asp:Button>
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
                           <img src="images/donation_10880476.png" img width="100px"/>
                            <h4 class="mt-3">The donations you have recieved </h4>
                            <span>Account Info: </span>
                            <asp:Label CssClass="badge badge-pill badge-info" ID="Label2" runat="server" Text="Activity details"></asp:Label>
                        </center>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name], [contact], [date], [things] FROM [don]"></asp:SqlDataSource>
                         
                        <hr />
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                <asp:BoundField DataField="contact" HeaderText="contact" SortExpression="contact" />
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
