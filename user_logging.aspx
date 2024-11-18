<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="user_logging.aspx.cs" Inherits="final_project.user_logging" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="images/person_7023017.png" width="150px" />

                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>User Logging</h3>
                                </center>
                            </div>

                        </div>
                         <div class="row">
                            <div class="col">
                               
                                  <hr />
                               
                            </div>

                        </div>

                         <div class="row">
                            <div class="col">
                                <label>member ID</label>
                              <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="member ID"></asp:TextBox>
                              </div>
                            </div>

                        </div>
                         <div class="row">
                            <div class="col">
                                <label>password</label>
                              <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="password"></asp:TextBox>
                              </div>

                                    <div class="form-group">
                                        <asp:Button class="btn btn-info btn-block btn-lg" ID="Button1" runat="server" Text="log in" value="log in" OnClick="Button1_Click"  />
                              </div>
                                 <div class="form-group">
                                        <asp:Button class="btn btn-info btn-block btn-lg" ID="Button2" runat="server" Text="Sign-up" value="sign up" OnClick="Button2_Click" />
                              </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



</asp:Content>
