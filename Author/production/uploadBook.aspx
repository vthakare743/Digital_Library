<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/production/AuthorMasterPage.master" AutoEventWireup="true" CodeFile="uploadBook.aspx.cs" Inherits="Dashboard_production_uploadBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="h-100 h-custom">

    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server">
           
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-8 col-xl-8">
        <div class="card rounded-3">
          <img src="../../images/good book.jpg" height="200px"
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

               <%--<div class="form-outline mb-4">
               <asp:Label ID="Label6" runat="server" class="form-control" Text="Address" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="txtaddrss" runat="server" placeholder="Enter The Address" class="form-control" TextMode="MultiLine" autocomplete="off" ValidationGroup="a" ></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"  Display="Dynamic" ForeColor="Red" 
                 SetFocusOnError="True" ControlToValidate="txtaddrss"  ErrorMessage="please enter the address" ValidationGroup="a"></asp:RequiredFieldValidator>
  
              </div>
              --%>

              </div>
            <div class="form-outline mb-4">
               <asp:Label ID="Label4" runat="server" class="form-control" Text="Mobile No" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="Txtmob" runat="server" placeholder=" Enter  Mobile No" class="form-control" TextMode="SingleLine" autocomplete="off" MaxLength="10" ValidationGroup="a"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"  Display="Dynamic" ForeColor="Red" 
                 SetFocusOnError="True" ControlToValidate="Txtmob"  ErrorMessage="please enter the mobile no" ValidationGroup="a"></asp:RequiredFieldValidator>
  
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                      ErrorMessage="mobile no must be proper format"  ControlToValidate="txtmob" Display="Dynamic"
                       SetFocusOnError="True" ForeColor="Red"
                        ValidationExpression="\d{10}" ValidationGroup="a"></asp:RegularExpressionValidator>
                  </div>
           <div class="form-outline mb-4">
               <asp:Label ID="Label5" runat="server" class="form-control" Text="Year Of Published" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="txtyear" runat="server" placeholder=" Enter  Year" TextMode="Date" class="form-control"  autocomplete="off" MaxLength="10" ValidationGroup="a"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"  Display="Dynamic" ForeColor="Red" 
                 SetFocusOnError="True" ControlToValidate="txtyear"  ErrorMessage="please enter the year" ValidationGroup="a"></asp:RequiredFieldValidator>
  
                   
                  </div>

                <div class="form-outline mb-4">
                     <asp:Label ID="lblct" runat="server" class="form-control" Text=" Book Category " Font-Bold="True"></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                        <asp:ListItem>Category Select</asp:ListItem>
                        <asp:ListItem>Comics Book</asp:ListItem>
                        <asp:ListItem>Dictionaries & Language</asp:ListItem>
                        <asp:ListItem>History & Humanities</asp:ListItem>
                        <asp:ListItem>Society & social sciences</asp:ListItem>
                        <asp:ListItem>Business & Economics</asp:ListItem>
                        <asp:ListItem>Science & Mathematics</asp:ListItem>
                        <asp:ListItem>Computer & Internet</asp:ListItem>
                        <asp:ListItem>Industrial / commercial art, design & Music</asp:ListItem>
                        <asp:ListItem>Biographies & Memoirs</asp:ListItem>
                       
                    </asp:DropDownList>
                </div>
       
           <%--<div class="form-outline mb-4">
               <asp:Label ID="Label3" runat="server" class="form-control" Text="Pin Code/पिन कोड" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="txtpin" runat="server" placeholder="Enter The Pin Code" class="form-control" TextMode="SingleLine" autocomplete="off" MaxLength="6" ValidationGroup="a"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"  Display="Dynamic" ForeColor="Red" 
                 SetFocusOnError="True" ControlToValidate="txtpin"  ErrorMessage="please enter the pin code" ValidationGroup="a"></asp:RequiredFieldValidator>
  
               
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                      ErrorMessage="pin code must be proper format"  ControlToValidate="txtpin" Display="Dynamic"
                       SetFocusOnError="True" ForeColor="Red"
                        ValidationExpression="\d{6}" ValidationGroup="a"></asp:RegularExpressionValidator>

              </div>--%>

         <div class="form-outline mb-4">
               <asp:Label ID="Label2" runat="server" class="form-control" Text="Book Name" Font-Bold="True"></asp:Label>
                <asp:TextBox  ID="txtbook" runat="server" placeholder=" Enter Book Name" class="form-control" autocomplete="off" ValidationGroup="a" ></asp:TextBox>

               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="please enter the book name"
                 ForeColor="Red" ControlToValidate="txtbook" Display="Dynamic" SetFocusOnError="True" ValidationGroup="a"></asp:RequiredFieldValidator>

               <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtbook" Display="Dynamic" 
                 ForeColor="Red" SetFocusOnError="True" ValidationExpression="[a-z A-Z]*$" ErrorMessage="  Name must be alphabets" ValidationGroup="a">

               </asp:RegularExpressionValidator>
              </div>
         <div class="form-outline mb-4">
               <asp:Label ID="Label3" runat="server" class="form-control" Text="Book Price" Font-Bold="True"></asp:Label>
                <asp:TextBox  ID="txtprice" runat="server" placeholder=" Enter Book Price" class="form-control" autocomplete="off" ValidationGroup="a" ></asp:TextBox>

               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="please enter the Price"
                 ForeColor="Red" ControlToValidate="txtprice" Display="Dynamic" SetFocusOnError="True" ValidationGroup="a"></asp:RequiredFieldValidator>

              <%-- <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtprice" Display="Dynamic" 
                 ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Please enter the price" ValidationGroup="a">

               </asp:RegularExpressionValidator>--%>
              </div>


            <div class="form-outline mb-4">
               <asp:Label ID="Label7" runat="server" class="form-control" Text=" Choose Your Book Photo " Font-Bold="True"></asp:Label>
                <asp:FileUpload ID="Fuphoto" runat="server"  placeholder="upload here" ValidationGroup="a"/>

                     <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"  Display="Dynamic" ForeColor="Red" 
                     SetFocusOnError="True" ControlToValidate="Fuphoto"  ErrorMessage="upload the photo" ValidationGroup="a"></asp:RequiredFieldValidator>    
             <asp:RegularExpressionValidator ID="required" runat="server" ErrorMessage="Upload .jpg or .png file only" ControlToValidate="Fuphoto" Display="Dynamic" Font-Bold="True" ForeColor="Red" ValidationGroup="a" ValidationExpression="^.*\.(jpg|jpeg|png|JPG|JPEG|JPG)$"></asp:RegularExpressionValidator>
                 </div>
         <div class="form-outline mb-4">
               <asp:Label ID="Label6" runat="server" class="form-control" Text=" Choose Book PDF " Font-Bold="True"></asp:Label>
                <asp:FileUpload ID="FUpdf" runat="server"  placeholder="upload here" ValidationGroup="a"/>

                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"  Display="Dynamic" ForeColor="Red" 
                     SetFocusOnError="True" ControlToValidate="FUpdf"  ErrorMessage="upload the PDF" ValidationGroup="a"></asp:RequiredFieldValidator>    
             <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="pdf file only" ControlToValidate="FUpdf" Display="Dynamic" Font-Bold="True" ForeColor="Red" ValidationGroup="a" ValidationExpression="^.*\.(pdf|PDF)$"></asp:RegularExpressionValidator>
                 </div>
          <asp:HiddenField ID="hfphoto" runat="server" />
          <asp:HiddenField ID="hfpdf" runat="server" />
             
             <center>
                <asp:Button ID="btnsubmit" runat="server"    style="border-radius: 1rem;" Text="Submit" CssClass="gradient-button" Width="100px"  ValidationGroup="a" OnClick="btnsubmit_Click" />
                </center>
        

           
               <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
            
            

           </div>
           </div>
            </div>
                </div>
  
</div>
           </div>
        
        </asp:Panel>
    
            
       
    </form>
        


</section>
</asp:Content>

