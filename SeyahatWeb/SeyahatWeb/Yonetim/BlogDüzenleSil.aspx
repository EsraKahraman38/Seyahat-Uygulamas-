<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="BlogDüzenleSil.aspx.cs" Inherits="SeyahatWeb.Yonetim.BlogDüzenleSil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Blog Düzenle/Sil Sayfası</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GoTripDB2ConnectionString4 %>" DeleteCommand="DELETE FROM [Blog] WHERE [BlogID] = @BlogID" InsertCommand="INSERT INTO [Blog] ([Baslik], [Ozet], [Resim], [Detay], [Tarih]) VALUES (@Baslik, @Ozet, @Resim, @Detay, @Tarih)" SelectCommand="SELECT * FROM [Blog]" UpdateCommand="UPDATE [Blog] SET [Baslik] = @Baslik, [Ozet] = @Ozet, [Resim] = @Resim, [Detay] = @Detay, [Tarih] = @Tarih WHERE [BlogID] = @BlogID">
           
            <DeleteParameters>
                <asp:Parameter Name="BlogID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Baslik" Type="String" />
                <asp:Parameter Name="Ozet" Type="String" />
                <asp:Parameter Name="Resim" Type="String" />
                <asp:Parameter Name="Detay" Type="String" />
                <asp:Parameter Name="Tarih" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Baslik" Type="String" />
                <asp:Parameter Name="Ozet" Type="String" />
                <asp:Parameter Name="Resim" Type="String" />
                <asp:Parameter Name="Detay" Type="String" />
                <asp:Parameter Name="Tarih" Type="DateTime" />
                <asp:Parameter Name="BlogID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="BlogID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="BlogID" HeaderText="BlogID" InsertVisible="False" ReadOnly="True" SortExpression="BlogID" />
                <asp:BoundField DataField="Baslik" HeaderText="Baslik" SortExpression="Baslik" />
                <asp:BoundField DataField="Ozet" HeaderText="Ozet" SortExpression="Ozet" />
                <asp:BoundField DataField="Resim" HeaderText="Resim" SortExpression="Resim" />
                <asp:BoundField DataField="Detay" HeaderText="Detay" SortExpression="Detay" />
                <asp:BoundField DataField="Tarih" HeaderText="Tarih" SortExpression="Tarih" />
            </Columns>
        </asp:GridView>




     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GoTripDB2ConnectionString %>" DeleteCommand="DELETE FROM [Blog] WHERE [BlogID] = @BlogID" InsertCommand="INSERT INTO [Blog] ([Baslik], [Ozet], [Resim], [Detay], [Tarih], [BlogKategoriID]) VALUES (@Baslik, @Ozet, @Resim, @Detay, @Tarih, @BlogKategoriID)" SelectCommand="SELECT * FROM [Blog]" UpdateCommand="UPDATE [Blog] SET [Baslik] = @Baslik, [Ozet] = @Ozet, [Resim] = @Resim, [Detay] = @Detay, [Tarih] = @Tarih, [BlogKategoriID] = @BlogKategoriID WHERE [BlogID] = @BlogID">
            <DeleteParameters>
                <asp:Parameter Name="BlogID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Baslik" Type="String" />
                <asp:Parameter Name="Ozet" Type="String" />
                <asp:Parameter Name="Resim" Type="String" />
                <asp:Parameter Name="Detay" Type="String" />
                <asp:Parameter Name="Tarih" Type="DateTime" />
                <asp:Parameter Name="BlogKategoriID" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Baslik" Type="String" />
                <asp:Parameter Name="Ozet" Type="String" />
                <asp:Parameter Name="Resim" Type="String" />
                <asp:Parameter Name="Detay" Type="String" />
                <asp:Parameter Name="Tarih" Type="DateTime" />
                <asp:Parameter Name="BlogKategoriID" Type="Int32" />
                <asp:Parameter Name="BlogID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" CssClass="table table-responsive" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="BlogID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#Eval("BlogID","BlogDuzenleSecilen.aspx?BlogID={0}") %>' runat="server">Düzenle</asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="BlogID" HeaderText="BlogID" InsertVisible="False" ReadOnly="True" SortExpression="BlogID" />
                <asp:BoundField DataField="Baslik" HeaderText="Baslik" SortExpression="Baslik" />
                <asp:BoundField DataField="Ozet" HeaderText="Ozet" SortExpression="Ozet" />
                <asp:BoundField DataField="Resim" HeaderText="Resim" SortExpression="Resim" />
                <asp:BoundField DataField="Detay" HeaderText="Detay" SortExpression="Detay" />
                <asp:BoundField DataField="Tarih" HeaderText="Tarih" SortExpression="Tarih" />
                <asp:BoundField DataField="BlogKategoriID" HeaderText="BlogKategoriID" SortExpression="BlogKategoriID" />
            </Columns>
        </asp:GridView>
    </div>

</asp:Content>
