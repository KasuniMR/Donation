<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admin_log.aspx.cs" Inherits="final_project.admin_log" %>
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
                                   <img src="images/department-store.png" width="150px" />

                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Department of Social Service</h3>
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
                                <label>Department ID</label>
                              <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Department ID"></asp:TextBox>
                              </div>
                            </div>

                        </div>
                         <div class="row">
                            <div class="col">
                                <label>password</label>
                              <div class="form-group">
                                  
                                  <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password ID" TextMode="Password"></asp:TextBox>
                              </div>
                                 <div class="form-group">
                                     <asp:Label ID="LabelError" runat="server" Text=""></asp:Label>
                              </div>

                                    <div class="form-group">
                                        <asp:Button class="btn btn-info btn-block btn-lg"  ID="Button1" runat="server" Text="Log-in" OnClick="Button1_Click1" />
                              </div>
                                
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
