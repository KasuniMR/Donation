<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="reg_log.aspx.cs" Inherits="final_project.reg_log" %>
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
                                    <img src="images/identification_2458328.png"  width="150px"/>

                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Confirm your identiication</h3>
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
                                <label>Register number</label>
                              <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="member ID"></asp:TextBox>
                              </div>
                            </div>

                        </div>
                         <div class="row">
                            <div class="col">
                                <label>Name</label>
                              <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="password"></asp:TextBox>
                              </div>

                                    <div class="form-group">
                                        <asp:Button class="btn btn-info btn-block btn-lg" ID="Button1" runat="server" Text="comform" OnClick="Button1_Click" />
                              </div>
                                 <div class="form-group">
                                   
                              </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
