<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="reference.aspx.cs" Inherits="final_project.reference" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-5 ">
                <div class="card">
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Add elder house reference</h4>
                                    
                                </center>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                  <img src="images/search-book_13216232.png"  width="100px" />

                                </center>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                               
                                  <hr />
                               
                            </div>

                        </div>


                         <div class="row">
                            <div class="col-md-4">
                               
                                  <label>reference-no</label>
                              <div class="form-group">
                                  <div class="input-group">
                                      <asp:TextBox  CssClass="form-control" ID="TextBox1" runat="server" placeholder="Reference no"></asp:TextBox>
                                      <asp:Button CssClass="btn btn-primary " ID="Buttonn" runat="server" Text="Go" />
                                      </div>
                              </div>
                               
                            </div>

                               <div class="col-md-8">
                               <label>Name</label>
                              <div class="form-group">
                                  <asp:TextBox  CssClass="form-control" ID="TextBox2" runat="server" placeholder="author name" ></asp:TextBox>
                              </div>
                                
                               
                            </div>

                        </div>





                         <div class="row">
                            <div class="col-4">
                                <asp:Button  ID="Button1" class="btn btn-lg btn-block btn-primary" runat="server" Text="add" OnClick="Button1_Click" />
                            </div>
                              <div class="col-4">
                                  <asp:Button ID="Button2" class="btn btn-lg btn-block btn-primary" runat="server" Text="update" OnClick="Button2_Click" />
                            </div>
                              <div class="col-4">
                                  <asp:Button ID="Button3" class="btn btn-lg btn-block btn-primary" runat="server" Text="delete" OnClick="Button3_Click" />
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
                                    <h4>Elder House List</h4>
                                 
                                </center>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                       
                     <div class="row">
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ref]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ref_no" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="ref_no" HeaderText="ref_no" ReadOnly="True" SortExpression="ref_no" />
                                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>


                    </div>
                </div>

            </div>
        

    </div>

</asp:Content>
