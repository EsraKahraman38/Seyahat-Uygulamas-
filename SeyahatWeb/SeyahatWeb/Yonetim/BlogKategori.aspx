<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="BlogKategori.aspx.cs" Inherits="SeyahatWeb.Yonetim.BlogKategori" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Blog Kategori Düzenleme Sayfası</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">

                <div class="form-group">
                    <label for="exampleInputName1">Blog Kategori Adı</label>
                    <asp:TextBox ID="txtKatAd" CssClass="form-control" runat="server" placeholder="Kategori Adı Giriniz"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="exampleInputName1">Blog</label>
                    <asp:DropDownList ID="DropBlog" runat="server" CssClass="form-control" placeholder="Blog Seçiniz" DataSourceID="SqlDataSource1" DataTextField="BBaslik" DataValueField="BlogID"></asp:DropDownList>
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GoTripDB2ConnectionString4 %>" SelectCommand="SELECT * FROM [Blog]"></asp:SqlDataSource>

                <asp:Button ID="BtnKaydet" runat="server" Text="Kaydet" CssClass="btn btn-gradient-primary btn-rounded btn-fw" OnClick="BtnKaydet_Click" />
                <asp:Button ID="BtnVazgec" runat="server" Text="Vazgeç" CssClass="btn btn-gradient-light btn-rounded btn-fw" OnClick="BtnVazgec_Click" />
            </div>
        </div>
    </div>
    <br />
    <div class="card">
        <div class="card-body">
            <div class="form-group">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GoTripDB2ConnectionString4 %>" 
                    DeleteCommand="DELETE FROM [BlogKategori] WHERE [BlogKategoriID] = @BlogKategoriID" 
                    InsertCommand="INSERT INTO [BlogKategori] ([BKAd], [BlogID]) VALUES (@Adi, @BlogID)" 
                    SelectCommand="SELECT * FROM [BlogKategori]" 
                    UpdateCommand="UPDATE [BlogKategori] SET [BKAd] = @Adi, [BlogID] = @BlogID WHERE [BlogKategoriID] = @BlogKategoriID">
                    <DeleteParameters>
                        <asp:Parameter Name="BlogKategoriID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="BKAd" Type="String" />
                        <asp:Parameter Name="BlogID" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="BKAd" Type="String" />
                        <asp:Parameter Name="BlogID" Type="Int32" />
                        <asp:Parameter Name="BlogKategoriID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" CssClass="table table-borderless" AutoGenerateColumns="False" DataKeyNames="BlogKategoriID" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="BlogKategoriID" HeaderText="BlogKategoriID" InsertVisible="False" ReadOnly="True" SortExpression="BlogKategoriID" />
                        <asp:BoundField DataField="BKAd" HeaderText="BKAdi" SortExpression="BKAdi" />
                        <asp:BoundField DataField="BlogID" HeaderText="BlogID" SortExpression="BlogID" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
