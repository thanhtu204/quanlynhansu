<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="QuanLyPhongBan.aspx.cs" Inherits="QuanLyNhanSu.QuanLyPhongBan" %>
   
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="Content/bootstrap.min.css" rel="stylesheet" />

        Chọn phòng ban   
            <asp:SqlDataSource ID="SQLPhongBan" runat="server" ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString6 %>" DeleteCommand="DELETE FROM [PhongBan] WHERE [MaPhong] = @MaPhong" InsertCommand="INSERT INTO [PhongBan] ([TenPhong]) VALUES (@TenPhong)" SelectCommand="SELECT * FROM [PhongBan]" UpdateCommand="UPDATE [PhongBan] SET [TenPhong] = @TenPhong WHERE [MaPhong] = @MaPhong">
                <DeleteParameters>
                    <asp:Parameter Name="MaPhong" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TenPhong" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenPhong" Type="String" />
                    <asp:Parameter Name="MaPhong" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:DropDownList ID="DDLPhongBan" runat="server" DataSourceID="SQLPhongBan" DataTextField="TenPhong" DataValueField="MaPhong" AutoPostBack="true"></asp:DropDownList> 
        </div>
        <asp:SqlDataSource ID="SQLNhanVien" runat="server" ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString7 %>" DeleteCommand="DELETE FROM [NhanVien] WHERE [MaNV] = @MaNV" InsertCommand="INSERT INTO [NhanVien] ([HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (@HoNV, @TenNV, @Phai, @NgaySinh, @NoiSinh, @MaPhong)" SelectCommand="SELECT * FROM [NhanVien] WHERE ([MaPhong] = @MaPhong)" UpdateCommand="UPDATE [NhanVien] SET [HoNV] = @HoNV, [TenNV] = @TenNV, [Phai] = @Phai, [NgaySinh] = @NgaySinh, [NoiSinh] = @NoiSinh, [MaPhong] = @MaPhong WHERE [MaNV] = @MaNV">
            <DeleteParameters>
                <asp:Parameter Name="MaNV" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="HoNV" Type="String" />
                <asp:Parameter Name="TenNV" Type="String" />
                <asp:Parameter Name="Phai" Type="Boolean" />
                <asp:Parameter DbType="Date" Name="NgaySinh" />
                <asp:Parameter Name="NoiSinh" Type="String" />
                <asp:Parameter Name="MaPhong" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DDLPhongBan" Name="MaPhong" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="HoNV" Type="String" />
                <asp:Parameter Name="TenNV" Type="String" />
                <asp:Parameter Name="Phai" Type="Boolean" />
                <asp:Parameter DbType="Date" Name="NgaySinh" />
                <asp:Parameter Name="NoiSinh" Type="String" />
                <asp:Parameter Name="MaPhong" Type="Int32" />
                <asp:Parameter Name="MaNV" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="grdNhanVien" CssClass="my-custom-class" runat="server" AutoGenerateColumns="False" DataKeyNames="MaNV" DataSourceID="SQLNhanVien" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnSelectedIndexChanged="grdNhanVien_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="MaNV" HeaderText="MaNV"  />
                <asp:BoundField DataField="TenNV" HeaderText="TenNV"  />
                <asp:CheckBoxField DataField="Phai" HeaderText="Phai" />
                <asp:BoundField DataField="NgaySinh" HeaderText="NgaySinh"  />
                <asp:BoundField DataField="NoiSinh" HeaderText="NoiSinh" />
                <asp:BoundField DataField="MaPhong" HeaderText="MaPhong"  />
                <asp:CommandField ShowDeleteButton="True" />
              
                <asp:CommandField ShowEditButton="True" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
            <HeaderStyle CssClass="bg-secondary text-light" />
            <PagerSettings Mode ="NextPreviousFirstLast"  FirstPageText="Đầu" LastPageText ="Cuối"/>
            <PagerStyle HorizontalAlign="Center" />
        </asp:GridView>
    
    </asp:Content>
