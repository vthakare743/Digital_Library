<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/production/UserMasterPage.master" AutoEventWireup="true" CodeFile="CommentSuggetion.aspx.cs" Inherits="Dashboard_production_CommentSuggetion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%-- <section class="h-100 h-custom">

    <form id="form1" runat="server">--%>
       <%-- <asp:Panel ID="Panel1" runat="server">--%>
           
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-8 col-xl-8">
        <div class="card rounded-3">
          <img src="../../images/good bb.jpg" height="200px"
            class="w-100" style="border-top-left-radius: .3rem; border-top-right-radius: .3rem;"
            alt="Sample photo">
            <div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10">
       <div class="card" id="admin-login-card">
           <div class="card-header">
                 <div class="d-flex align-items-center mb-3 pb-1">
                    <i class="fa fa-book fa-2x" style="color: #51413a;"></i>
                    <span class="h3 fw-bold mb-0"> Upload Book </span>
                  </div>
             </div>
           
   
          
           <div class="form-outline mb-4">
               <asp:Label ID="Label1" runat="server" class="form-control" Text="Book Owner Name" Font-Bold="True"></asp:Label>
                <asp:TextBox  ID="txtaname" runat="server" placeholder=" Enter Owner Name" class="form-control" autocomplete="off" ValidationGroup="a" ></asp:TextBox>

               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="please enter the name"
                 ForeColor="Red" ControlToValidate="txtaname" Display="Dynamic" SetFocusOnError="True" ValidationGroup="a"></asp:RequiredFieldValidator>

               <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtaname" Display="Dynamic" 
                 ForeColor="Red" SetFocusOnError="True" ValidationExpression="[a-z A-Z]*$" ErrorMessage="  Name must be alphabets" ValidationGroup="a">

               </asp:RegularExpressionValidator>
              </div>
</asp:Content>

