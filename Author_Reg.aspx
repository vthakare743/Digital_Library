<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="Author_Reg.aspx.cs" Inherits="Author_Reg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
   
        <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span style="font-family: 'times New Roman', Times, serif; font-weight: bold; font-size: x-large;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Author&nbsp; Registration</span></h2>
        <div class="contact">
         <div class="container">
            <div class="row">
               <div class="col-md-6  padding_right0">
                  <div class="map_main">
                     <div class="map-responsive">
                       
                     </div>
                  </div>
               </div>
               <div class="col-md-6 padding_left0">
                  <form runat="server" id="request" class="main_form">
                     <div class="row">
                        <div class="col-md-12 ">
                            <asp:Label ID="Label1" runat="server" Text="First Name :" ForeColor="#CC0099" Font-Bold="True"></asp:Label>
                            <%--<input class="contactus" placeholder="Name" type="type" name="Name"> --%>
                             <asp:TextBox ID="txtfirstname" runat="server" tabindex="4" class="form-control" placeholder="First Name" style="text-transform: uppercase;" BorderColor="#333333"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtfirstname" Display="Dynamic" 
                         ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000"  SetFocusOnError="True">Enter Your First Name !!!</asp:RequiredFieldValidator><span class="error"></span>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                       ControlToValidate="txtfirstname" Display="Dynamic" 
                                        ErrorMessage="RegularExpressionValidator" ForeColor="Red" 
                                         SetFocusOnError="True" ValidationExpression="[a-zA-Z ]*$">Name Must be in alphabets!!!</asp:RegularExpressionValidator>
              
                            &nbsp;</div>
                        
                        <div class="col-md-12">
                             <asp:Label ID="Label2" runat="server" Text="Last Name :" ForeColor="#CC0099" Font-Bold="True"></asp:Label>
                           <asp:TextBox ID="txtlastname" runat="server" tabindex="6" class="form-control" placeholder="Last Name" style="text-transform: uppercase;" BorderColor="#333333"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtlastname" Display="Dynamic" 
                         ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000"  SetFocusOnError="True">Enter Your last Name !!!</asp:RequiredFieldValidator><span class="error"></span>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                       ControlToValidate="txtlastname" Display="Dynamic" 
                                        ErrorMessage="RegularExpressionValidator" ForeColor="Red" 
                                         SetFocusOnError="True" ValidationExpression="[a-zA-Z ]*$"> Last Name Must be in alphabets!!!</asp:RegularExpressionValidator>
                         &nbsp; </div>
                        <div class="col-md-12">
                             <asp:Label ID="Label3" runat="server" Text="Email ID :" ForeColor="#CC0099" Font-Bold="True"></asp:Label>
                           <asp:TextBox ID="txtemail" runat="server" tabindex="7" class="form-control" placeholder="Enter Your Email" autocomplete="off" BorderColor="#333333"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtemail" Display="Dynamic" 
                         ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000"  SetFocusOnError="True">Enter Your Email!!!</asp:RequiredFieldValidator><span class="error"></span>

                     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                                      runat="server" ControlToValidate="txtemail" Display="Dynamic" 
                                      ErrorMessage="RegularExpressionValidator" ForeColor="Red" 
                                      SetFocusOnError="True" 
                                      ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Enter Correct EmaiId</asp:RegularExpressionValidator>
                         &nbsp; </div>

                        <div class="col-md-12">
                             <asp:Label ID="Label4" runat="server" Text="Mobile No :" ForeColor="#CC0099" Font-Bold="True"></asp:Label>
                           <asp:TextBox ID="txtno" runat="server" maxlength="10" tabindex="6" class="form-control" placeholder="Enter Your Mobile No" BorderColor="#333333"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtno" Display="Dynamic" 
                         ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000"  SetFocusOnError="True">Enter Your Mobile No !!!</asp:RequiredFieldValidator><span class="error"></span>

                     <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                      ControlToValidate="txtno" Display="Dynamic" 
                                      ErrorMessage="RegularExpressionValidator" ForeColor="Red" 
                                       SetFocusOnError="True" ValidationExpression="\d{10}">Enter Correct  Mobile No.</asp:RegularExpressionValidator>
                          &nbsp;</div>

                          <div class="col-md-12">
                               <asp:Label ID="Label5" runat="server" Text="User Name :" ForeColor="#CC0099" Font-Bold="True"></asp:Label>
                        <asp:TextBox ID="txtauthor" runat="server" tabindex="8" class="form-control" placeholder="Enter Author Name" autocomplete="off" BorderColor="#333333"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                          ControlToValidate="txtauthor" Display="Dynamic" 
                           ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000"  SetFocusOnError="True">Enter Author Name !!!</asp:RequiredFieldValidator><span class="error"></span>
                          <span id="ContentPlaceHolder1_RegularExpressionValidator4" style="color:#FF3300;display:none;">Author name must be in proper format</span>
                          &nbsp;</div>

                          <div class="col-md-12">
                               <asp:Label ID="Label6" runat="server" Text="Password :" ForeColor="#CC0099" Font-Bold="True"></asp:Label>
                            <asp:TextBox ID="txtpwd" runat="server"  tabindex="9" class="form-control" textmode="Password" placeholder="Enter Password" BorderColor="#333333"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="txtpwd" Display="Dynamic" 
                         ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000"  SetFocusOnError="True">Enter Your Password !!!</asp:RequiredFieldValidator><span class="error"></span>
                                <%-- <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                                      ControlToValidate="txtno" Display="Dynamic" 
                                      ErrorMessage="RegularExpressionValidator" ForeColor="Red" 
                                       SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Must contain at least 1 lower case letter, 1 upper case letter,1 digit and 1 special character.</asp:RegularExpressionValidator>--%>
                       
                          &nbsp;</div>

                         <div class="col-md-12">
                             <asp:FileUpload ID="fuphoto" runat="server" />
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                  ControlToValidate="fuphoto" Display="Dynamic" 
                                         ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000"  SetFocusOnError="True">Choose File !!!</asp:RequiredFieldValidator><span class="error"></span>
                               
                          &nbsp;</div>
                         <br />
                         <br />
                        <div class="col-md-12">
                           <%--<button class="send_btn">Send</button>--%>
                            <asp:Button ID="btnsubmit" class="btn btn-dark" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
                           <br />
                            <asp:Label ID="lblmsg" runat="server" ForeColor="Red" Font-Size="Large"></asp:Label>
                        </div>
                     </div>
                  </form>
               </div>
            </div>
         </div>
      </div>
</asp:Content>

