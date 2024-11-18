<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="donate.aspx.cs" Inherits="final_project.donate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid">
        <div class="row">
            <div class="col-md-5 ">
                <div class="card">
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Donate Foods</h4>
                                    
                                </center>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                 <img src="images/donation_10880476.png"  width="100px"/>

                                </center>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                               
                                  <hr />
                               
                            </div>

                        </div>


                         <div class="row">
                          

                               <div class="col-md-6">
                               <label>member id</label>
                              <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="member id" ></asp:TextBox>
                              </div>
                                
                               
                            </div>
                               <div class="col-md-6">
                               
                                  <label>Elder House name</label>
                              <div class="form-group">
                                  <div class="input-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder=" id"></asp:TextBox>
                                  <asp:Button CssClass="btn btn-primary " ID="button" runat="server" Text="go" />
                                      </div>
                              </div>
                               
                            </div>

                        </div>

                         <div class="row">
                          

                               <div class="col-md-6">
                               <label>member name</label>
                              <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="member name"></asp:TextBox>
                              </div>
                                
                               
                            </div>
                               <div class="col-md-6">
                               
                                  <label>Contact number</label>
                              <div class="form-group">
                                  <div class="input-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Contact number"></asp:TextBox>
                                
                                      </div>
                              </div>
                               
                            </div>
                          

                        </div>
                         <div class="row">
                          

                               <div class="col-md-6">
                               <label>Donate date</label>
                              <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Donate date" TextMode="Date"></asp:TextBox>
                              </div>
                                
                               
                            </div>
                               <div class="col-md-6">
                               
                                  <label>Donate things</label>
                              <div class="form-group">
                                  <div class="input-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Donate things"  TextMode="MultiLine"></asp:TextBox>
                                
                                      </div>
                              </div>
                               
                            </div>
                          

                        </div>







                         <div class="row">
                            <div class="col-6">
                                <asp:Button ID="Button1" class="btn btn-lg btn-block btn-primary" runat="server" Text="issue" OnClick="Button1_Click" />
                            </div>
                              <div class="col-6">
                              
                            </div>
                            

                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                      
                            <div class="col">
                                <center>
                                    <h4>Donation list</h4>
                                 
                                </center>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [date], [things], [elder_id] FROM [don]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView  class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
                                        <asp:BoundField DataField="things" HeaderText="Donate things" SortExpression="things" />
                                        <asp:BoundField DataField="elder_id" HeaderText="Elder house name" SortExpression="elder_id" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>



                    </div>
                </div>

            </div>
</asp:Content>
