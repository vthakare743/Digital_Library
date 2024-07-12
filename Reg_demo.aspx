<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="Reg_demo.aspx.cs" Inherits="Reg_Author" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server">
    <div class="back_re">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="title">
                         <h2>Contact Us</h2>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!--  contact -->
      <div class="contact">
         <div class="container">
            <div class="row">
               <div class="col-md-6  padding_right0">
                  <div class="map_main">
                     <div class="map-responsive">
                        <iframe src="https://www.google.com/maps/embed/v1/place?key=AIzaSyA0s1a7phLN0iaD6-UE7m4qP-z21pH0eSc&amp;q=Eiffel+Tower+Paris+France" width="600" height="453" frameborder="0" style="border:0; width: 100%;" allowfullscreen=""></iframe>
                     </div>
                  </div>
               </div>
               <div class="col-md-6 padding_left0">
                  
                    <div class="col-lg-7 mb-5">
                <div class="regiatration-form bg-light p-30">
                    <div id="success"></div>
                    <div class="control-group">
                          <asp:TextBox ID="txtid" runat="server" tabindex="6" class="form-control" placeholder="ID" style="text-transform: uppercase;"></asp:TextBox>
                 <%--<span id="ContentPlaceHolder1_RequiredFieldValidator3" style="color:Red;display:none;">Enter First Name</span>--%>

                       <span id="Span11" style="color:Red;display:none;"> id must be alphabets</span>
                       </div>
                    <br />
                   
                        <div class="control-group">
                          <asp:TextBox ID="txtfirstname" runat="server" tabindex="6" class="form-control" placeholder="First Name" style="text-transform: uppercase;"></asp:TextBox>
                 <%--<span id="ContentPlaceHolder1_RequiredFieldValidator3" style="color:Red;display:none;">Enter First Name</span>--%>

                       <span id="ContentPlaceHolder1_RegularExpressionValidator2" style="color:Red;display:none;"> First Name must be alphabets</span>
                       </div>
                    <br />
                    <div class="control-group">
                          <asp:TextBox ID="txtlastname" runat="server" tabindex="6" class="form-control" placeholder="Last Name" style="text-transform: uppercase;"></asp:TextBox>
                 <span id="Span1" style="color:Red;display:none;">Enter Last Name</span>

                       <span id="Span2" style="color:Red;display:none;"> Last Name must be alphabets</span>
                       </div>
                    <br />
                        <div class="control-group">
                              <asp:TextBox ID="txtemail" runat="server" tabindex="6" class="form-control" placeholder="Email ID" style="text-transform: uppercase;"></asp:TextBox>
                 <span id="Span3" style="color:Red;display:none;">Enter email id Name</span>

                       <span id="Span4" style="color:Red;display:none;"> Email must be in proper format</span>
                       </div>
                    <br />
                        <div class="control-group">
                              <asp:TextBox ID="txtno" runat="server" tabindex="6" class="form-control" placeholder="Mobile Number" style="text-transform: uppercase;"></asp:TextBox>
                 <span id="Span5" style="color:Red;display:none;">Enter Mobile No Name</span>

                       <span id="Span6" style="color:Red;display:none;"> Mobile no. must be in proper format</span>
                       </div>
                    <br />
                        <%--<div>
                        <asp:TextBox ID="txtdate" runat="server" class="form-control"  TextMode="date" placeholder=" date:"></asp:TextBox>                                  
                            <p class="help-block text-danger"></p>
                        </div>--%>
                <div>
                       <asp:TextBox ID="txtauthor" runat="server" tabindex="6" class="form-control" placeholder="Author_Name" style="text-transform: uppercase;"></asp:TextBox>
                 <span id="Span7" style="color:Red;display:none;">Enter Author Name</span>

                       <span id="Span8" style="color:Red;display:none;"> Author name must be in proper format</span>
                       </div>
                    <br />
                <div>
                      <asp:TextBox ID="txtpwd" runat="server" tabindex="6" class="form-control" placeholder="Password" style="text-transform: uppercase;"></asp:TextBox>
                 <span id="Span9" style="color:Red;display:none;">Enter Password Name</span>

                       <span id="Span10" style="color:Red;display:none;"> Must contain at least 1 lower case letter, 1 upper case letter,1 digit and 1 special character</span>
                       </div>
                    <br/>
                        <div>
                            <asp:Button ID="btnsubmit" type="submit" class="btn btn-warning" runat="server" Text="Submit" Width="145px" OnClick="btnsubmit_Click1" />
                        </div>
                     </div>
                  
               </div>
            </div>
         </div>
          </div>
        </form>
</asp:Content>

