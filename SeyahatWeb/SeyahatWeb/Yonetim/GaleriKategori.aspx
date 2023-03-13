<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="GaleriKategori.aspx.cs" Inherits="SeyahatWeb.Yonetim.GaleriKategori" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Resim Galerisi Kategori İşlemleri Sayfası</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <div class="forms-sample">

                    <div class="form-group">
                        <label for="exampleInputName1">Galeri Kategori Adı</label>
                        <asp:TextBox ID="txtGalKatAd" CssClass="form-control" runat="server" placeholder="Galeri Kategori Adı Giriniz"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label for="exampleInputName1">Galeri</label>
                        <asp:DropDownList ID="DropGaleri" runat="server" placeholder="Galeri Seciniz" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="GBaslik" DataValueField="GaleriID"></asp:DropDownList>
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GoTripDB2ConnectionString2 %>" SelectCommand="SELECT * FROM [Galeri]"></asp:SqlDataSource>

                    <br />
                    <asp:Button ID="BtnKatEkle" runat="server" Text="Ekle" CssClass="btn btn-gradient-primary btn-rounded btn-fw" OnClick="BtnKatEkle_Click" />
                    <asp:Button ID="BtnVazgec" runat="server" Text="Vazgeç" CssClass="btn btn-gradient-light btn-rounded btn-fw" OnClick="BtnVazgec_Click" />
                </div>
            </div>
        </div>
    </div>
    <br />

    <div class="card">
        <div class="card-body">
            <div div="forms-sample" runat="server">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GoTripDB2ConnectionString2 %>"
                    DeleteCommand="DELETE *FROM [GaleriKategori] WHERE [GaleriKategoriID] = @GaleriKategoriID"
                    InsertCommand="INSERT INTO [GaleriKategori] ([GKAd], [GaleriID]) VALUES (@Adi, @GaleriID)"
                    SelectCommand="SELECT * FROM [GaleriKategori]" UpdateCommand="UPDATE [GaleriKategori] SET [GKAd] = @Adi, [GaleriID] = @GaleriID WHERE [GaleriKategoriID] = @GaleriKategoriID">
                    <DeleteParameters>
                        <asp:Parameter Name="GaleriKategoriID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="GKAd" Type="String" />
                        <asp:Parameter Name="GaleriID" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="GKAd" Type="String" />
                        <asp:Parameter Name="GaleriID" Type="Int32" />
                        <asp:Parameter Name="GaleriKategoriID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CssClass="table table-borderless" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="GaleriKategoriID" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="GaleriKategoriID" HeaderText="GaleriKategoriID" InsertVisible="False" ReadOnly="True" SortExpression="GaleriKategoriID" />
                        <asp:BoundField DataField="GKAd" HeaderText="GKAd" SortExpression="GKAd" />
                        <asp:BoundField DataField="GaleriID" HeaderText="GaleriID" SortExpression="GaleriID" />
                    </Columns>
                </asp:GridView>

            </div>
        </div>
    </div>


</asp:Content>
