<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="final_project.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <section class="text-center">
  <div class="banner banner-1">
    <img src="images/banner-bg.png" class="img-fluid" alt="Banner 1" />
    <div class="banner-content">
      <h2>THULAKSHANA DISSNAYKA</h2>
      <p>This is the first banner's paragraph, introducing the first concept or message.</p>
    </div>
  </div>
  
  <div class="banner banner-2">
    <img src="images/banner-bg.png" class="img-fluid" alt="Banner 2" />
    <div class="banner-content">
      <h2>THULAKSHANA DISSNAYKA</h2>
      <p>This is the second banner's paragraph, emphasizing the second concept or idea.</p>
    </div>
  </div>
  
  <div class="banner banner-3" style="position: relative; text-align: center; padding: 20px;">
    <img src="images/banner-bg.png" class="img-fluid" alt="Banner 3" style="width: 100%; height: auto; position: relative;" />
    <div class="banner-content" style="position: absolute; top: 595%; left: 38%; transform: translate(-50%, -50%); background-color: rgba(255, 255, 255, 0.7); padding: 20px; border-radius: 10px; height: 431px; width: 731px;">
        <asp:GridView ID="GridView1" runat="server" style="margin-bottom: 20px; width: 100%; background-color: white; border: 1px solid #ddd;" />
       
    </div>
</div>

</section>


</asp:Content>
