<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="QuanLyNhanVien.aspx.cs" Inherits="QuanLyNhanSu.QuanLyNhanVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="Content/bootstrap.min.css" rel="stylesheet" />
    danh sach nhan vien
  <div>
      <a href="ThemNhanVien.aspx" class="btn btn-secondary"> Thêm Nhân Viên</a>
  </div>
    <asp:SqlDataSource ID="dsNhanVien" runat="server" ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString %>" SelectCommand="SELECT * FROM [NhanVien]">
       
    </asp:SqlDataSource>
     <asp:GridView runat="server" AutoGenerateColumns="False" DataKeyNames="MaNV" DataSourceID="dsNhanVien" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
         <Columns>
             <asp:BoundField DataField="MaNV" HeaderText="MaNV" InsertVisible="False" ReadOnly="True" SortExpression="MaNV"  />
             <asp:BoundField DataField="HoNV" HeaderText="HoNV" SortExpression="HoNV"   />
             <asp:BoundField DataField="TenNV" HeaderText="TenNV" SortExpression="TenNV" />
             <asp:CheckBoxField DataField="Phai" HeaderText="Phai" SortExpression="Phai" />
             <asp:BoundField DataField="NgaySinh" HeaderText="NgaySinh" SortExpression="NgaySinh" />
             <asp:BoundField DataField="NoiSinh" HeaderText="NoiSinh" SortExpression="NoiSinh" />
             <asp:BoundField DataField="MaPhong" HeaderText="MaPhong" SortExpression="MaPhong" />
         </Columns>
         <FooterStyle BackColor="#CCCCCC" />
         <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
         <RowStyle BackColor="White" />
         <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
         <SortedAscendingCellStyle BackColor="#F1F1F1" />
         <SortedAscendingHeaderStyle BackColor="#808080" />
         <SortedDescendingCellStyle BackColor="#CAC9C9" />
         <SortedDescendingHeaderStyle BackColor="#383838" />
         <HeaderStyle CssClass="bg-secondary text-light" />
            <PagerSettings Mode ="NextPreviousFirstLast"  FirstPageText="Đầu" LastPageText ="Cuối"/>
            <PagerStyle HorizontalAlign="Center" />
         
    </asp:GridView>
    </asp:Content>

