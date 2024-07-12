<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/production/UserMasterPage.master" AutoEventWireup="true" CodeFile="ShowBook_list.aspx.cs" Inherits="Dashboard_production_ShowBook_list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Add icon library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.btn {
  background-color: DodgerBlue;
  border: none;
  color: white;
  padding: 2px 15px;
  cursor: pointer;
  font-size: 15px;
}

/* Darker background on mouse-over */
.btn:hover {
  background-color: RoyalBlue;
}
</style>
</head>
    <section class="h-100 h-custom">
             <form id="form1" runat="server">
        <div class="row d-flex justify-content-center align-items-center h-100">
       <div class="col-lg-8 col-xl-8">
        <div class="card rounded-3" >
                <div class="col-md-12">
                    <div id="admin-login-card" class="card">
                        <div class="card-header">
                            <div class="d-flex align-items-center mb-3 pb-1">
                                <i class="fa fa-book fa-2x" style="color: #ff6219; font-size: medium; font-weight: bolder;"> Show Book List</i></div>
                        </div>
                        <div>
                            
                        </div>
                        <asp:Panel ID="Panel1" runat="server" Height="500" ScrollBars="Both" Width="100%">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" class="table table-borderless" DataSourceID="SqlDataSource2" Font-Size="Medium" ForeColor="#333333" GridLines="None" Height="5px" OnRowCommand="GridView1_RowCommand">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="owner_name" HeaderText="Owner Name" SortExpression="owner_name" />
                                    <asp:BoundField DataField="book_category" HeaderText="Book Category" SortExpression="book_category" />
                                    <asp:BoundField DataField="book_name" HeaderText="Book Name" SortExpression="book_name" />
                                    <asp:BoundField DataField="book_price" HeaderText="Book Price" SortExpression="book_price" />
                                     <asp:TemplateField HeaderText="Book Image">
                                    
                       <ItemTemplate>
                            <img src='Book_images/<%#Eval("uploaded_book") %>'Height="80px" Width="100px" />
                        </ItemTemplate>
                             
                                </asp:TemplateField>
                                    <asp:BoundField DataField="book_pdf" HeaderText="Book-pdf" SortExpression="book_pdf" />
                                    
                                   <%-- <asp:TemplateField HeaderText="Book PDF"  >--%>
                                   
                                       
                                        <%--<a href="#?book_pdf=<%# (Eval("book_pdf")) %>"class="fa fa-download"></a>--%>
                                      <%--  <button class="btnd"><i class="fa fa-download" CommandName="Download" CommandArgument="<%# Container.DataItemIndex %>" OnClientClick ="document.forms[0].target = '_blank';"></i> Download</button>--%>
                                     
                          <asp:TemplateField HeaderText="Download">
                       <ItemTemplate>
                          <asp:Button ID="Button1" Text="Download" runat="server" CssClass="gradient-button" CommandName="Download" CommandArgument="<%# Container.DataItemIndex %>" OnClientClick ="document.forms[0].target = '_blank';"/>
                    </ItemTemplate>
                             </asp:TemplateField>
                                </Columns>
                                <EditRowStyle BackColor="#7C6F57" />
                                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#E3EAEB" />
                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                <SortedAscendingHeaderStyle BackColor="#246B61" />
                                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                <SortedDescendingHeaderStyle BackColor="#15524A" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Digital_libraryDBConnectionString %>" SelectCommand="SELECT [owner_name], [Published_date], [book_category], [book_name], [book_price], [uploaded_book], [book_pdf] FROM [BookDeatails]"></asp:SqlDataSource>
                        </asp:Panel>
                        
                    </div>
                </div>
              </div>
            
          </div>       
         </div>
       </form>
       </section>
       
</asp:Content>

