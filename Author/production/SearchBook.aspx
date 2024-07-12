<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/production/UserMasterPage.master" AutoEventWireup="true" CodeFile="SearchBook.aspx.cs" Inherits="Dashboard_production_SearchBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <form id="form1" runat="server">
  <div class="row d-flex justify-content-center align-items-center h-100">
    
      <div class="col-md-8">
          <img src="../../images/carousel-1--.jpg" height="200px"
               class="w-100" style="border-top-left-radius: .3rem; border-top-right-radius: .3rem;" alt="Sample photo">
   
     
       <div class="card" id="admin-login-card">
           <div class="card-header">
              <h3 style="color: #800000"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Search Book</strong></h3>
           </div>


           <div class="card-body">
              
                         
               <div class="form-group">
              
                  
                   
                     <h5 style="color: #660033; font-family: 'Arial Rounded MT Bold';">Search By Book Name   <asp:TextBox ID="txtbname" runat="server" class="form-control" autocomplete="off" Font-Bold="True"></asp:TextBox></h5>                    <br />
                         
                   </div>

                   <center> <asp:Button ID="btnsearch" runat="server" Text="Search" CssClass="gradient-button"  Font-Bold="True" OnClick="btnsearch_Click"   /></center>

               <br />
                    <asp:Label ID="lblshow" runat="server" Text=""></asp:Label>

                <%-- <div class="row" >--%>

          <%-- <center><asp:Button ID="btnback" runat="server" Text="Back" TextColor="White" class="dark" ForeColor="White"  /></center>--%>
    <%--    </div>--%>
               <asp:Panel ID="Panel1" runat="server" ScrollBars="Vertical" Height="500"  Width="100%">
               <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1"  >

                   <ItemTemplate>
                       

        <div class="card-body">

            <div class="row">

                <div class="col md-4" style="box-shadow:2px 2px 4px #000000">
           <asp:Label ID="Label2" runat="server" Font-Size="X-Large" ForeColor="Red" Text='<%#Eval("owner_name") %>' ></asp:Label>
                     
         <div class="row">
              <div class="col md-6" style="padding-left:11px">
          
          
               <i class="fa fa-book" style="color: #ff6219;"></i>
                <asp:Label ID="lbldname" runat="server" Font-Size="Large" Text='<%#Eval("book_name") %>' Font-Bold="True"></asp:Label>
                <br />
                   <i class="fa fa-calendar" style="color: #ff6219;"></i>
                <asp:Label ID="lbldegree" runat="server" Font-Size="10" Text='<%#Eval("Published_date") %>' Font-Bold="True"  ></asp:Label>
                <br />
                 <i class="fa fa-inr" style="color: #ff6219;"></i>
                <asp:Label ID="lblfees" runat="server" Text='<%#Eval("book_price") %>' Font-Bold="True" Font-Size="10"></asp:Label><asp:Label ID="Label1" runat="server"  Font-Size="Small"></asp:Label>
                 
              
                  <br/>
               
                 
                <%--  <i class="fa fa-clone"style="color: #ff6219;"></i>
                  <asp:Label ID="lblcategory" runat="server"  Font-Size="10" Font-Bold="True" Text='<%#Eval("booking_charges") %>'  ></asp:Label><asp:Label ID="Label3" runat="server" Text="(Booking Charge)" Font-Size="Small"></asp:Label>--%>
                  <br />
             <%-- <i class="fa fa-address-card" style="color: #ff6219;"></i>
                <asp:Label ID="lblname" runat="server" Font-Size="10" Text='<%#Eval("address") %>' ></asp:Label>--%>
                <br />

              
               
             
              
                    </div>

              <div class="col md-4" style="padding-left:10px">
           
                   <img src='../production/Book_images/<%# Eval("uploaded_book") %>'  Height="90" width="100"  style="border-radius:05%" />
                 <br />
                  <br />
                <asp:Button ID="btnbook" runat="server" class="success"  Text="Add To Card" />

                   
                <%-- <a href='ViewHospitalDoctor.aspx?dname=<%# Eval("dname") %> ' class="gradient-button">View</a>--%>
              </div>
                            
                       


                    </div>
                  

                </div>
             
                
                   </div>
                </div>
          

        

        
   
                   </ItemTemplate>
        </asp:Repeater>

                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Digital_libraryDBConnectionString %>" SelectCommand="SELECT * FROM [BookDeatails]"></asp:SqlDataSource>

             </asp:Panel>

               
               
  
                  </div>
           </div>
          <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
               </div>
           </div>
        
    </form>
        
</asp:Content>

