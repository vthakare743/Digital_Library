<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="Login_Pannel.aspx.cs" Inherits="Login_Pannel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span style="font-family: 'times New Roman', Times, serif; font-weight: bold; font-size: x-large;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            Login&nbsp; Section</span></h2>
        <div class="contact">
         <div class="container">
            <div class="row">
               <div class="col-md-6  padding_Center">
                  <div class="map_main">
                     <div class="map-responsive">
                       
                     </div>
                  </div>
               </div>
               <div class="col-md-6 padding_left0">
                  <form runat="server" id="request" class="main_form">
                     <div class="row">
                        <div class="col-md-12 ">
                            
                            <asp:Label ID="Label1" runat="server" Text="User Type: " ForeColor="#CC0099" Font-Bold="True"></asp:Label>
                            <%--<input class="contactus" placeholder="Name" type="type" name="Name"> --%>
                            <asp:DropDownList ID="ddltype"  runat="server" class="form-control" BorderColor="#333333" Height="35px">
                                <asp:ListItem>Select Type</asp:ListItem>
                                <asp:ListItem>Author</asp:ListItem>
                                <asp:ListItem>User</asp:ListItem>
                                <asp:ListItem>Admin</asp:ListItem>
                            </asp:DropDownList>
              
                            <br />
                         </div>
                        
                        <div class="col-md-12">
                             <asp:Label ID="Label2" runat="server" Text="User Name :" ForeColor="#CC0099" Font-Bold="True"></asp:Label>
                           <asp:TextBox ID="txtuser" runat="server" tabindex="6" class="form-control" placeholder="Your Username" BorderColor="#333333" Height="35px"></asp:TextBox>
                  
                         &nbsp; 
                             <br />
                         </div>
                        

                   

                        <div class="col-md-12">
                             <asp:Label ID="Label4" runat="server" Text="Password :" ForeColor="#CC0099" Font-Bold="True"></asp:Label>
                        <asp:TextBox ID="txtpwd" runat="server" tabindex="6" class="form-control" placeholder="Your Password" textmode="Password" BorderColor="#333333" Height="35px"></asp:TextBox>

                          &nbsp;<br />
                         </div>

                          

                         
                         <br />
                         <br />
                        <div class="col-md-12">
                           <%--<button class="send_btn">Send</button>--%>
                            <asp:Button ID="btnlogin" class="btn btn-warning" runat="server" Text="Login" OnClick="btnlogin_Click"  />
                           
                        </div>
                          <asp:Label ID="lblmsg" runat="server"></asp:Label>
                     </div>
                  </form>
               </div>        
            </div> 
         </div>  
      </div>
    
</asp:Content>


   
