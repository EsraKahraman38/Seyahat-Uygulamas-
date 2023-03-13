<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="GaleriEkleSil.aspx.cs" Inherits="SeyahatWeb.Yonetim.GaleriEkleSil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Galeri İşlem Sayfası</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <div div="forms-sample" runat="server">
                    <div class="form-group">
                        <h3>Galeri Resim Yükleme Alanı</h3>
                        <br />
                        <div class="form-group">
                            <label for="exampleInputName1">Baslik</label>
                            <asp:TextBox ID="txtBaslik" CssClass="form-control" runat="server" placeholder="Baslik Giriniz"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputName1">Resim Adı</label>
                            <asp:TextBox ID="txtResimAd" CssClass="form-control" runat="server" placeholder="Resim Adı Giriniz"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Galeri Resim</label>
                            <input type="file" name="img[]" class="file-upload-default" />
                            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info" />
                            <asp:Button ID="BtnResimYukle" runat="server" Text="Resim Yükle" CssClass="btn btn-gradient-primary" OnClick="BtnResimYukle_Click" />
                            <div class="form-group">
                                <asp:Label ID="lblResim" runat="server" Text=""></asp:Label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputName1">Blog Adı</label>
                            <asp:DropDownList ID="DropBlog" runat="server" CssClass="form-control" placeholder="Blog Adı Giriniz" DataSourceID="SqlDataSource2" DataTextField="BBaslik" DataValueField="BlogID"></asp:DropDownList>
                        </div>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GoTripDB2ConnectionString2 %>" SelectCommand="SELECT * FROM [Blog]"></asp:SqlDataSource>
                        <br />

                        <asp:Button ID="BtnKaydet" runat="server" Text="Kaydet" CssClass="btn btn-gradient-primary btn-rounded btn-fw" OnClick="BtnKaydet_Click" />
                        <asp:Button ID="BtnVazgec" runat="server" Text="Vazgeç" CssClass="btn btn-gradient-light btn-rounded btn-fw" OnClick="BtnVazgec_Click" />

                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="card">
        <div class="card-body">
            <div class="forms-sample" runat="server">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GoTripDB2ConnectionString %>" 
                    SelectCommand="SELECT *FROM [Galeri]" 
                    DeleteCommand="DELETE * FROM [Galeri] WHERE [GaleriID] = @GaleriID" 
                    InsertCommand="INSERT INTO [Galeri] ([GBaslik], [GResim], [BlogID]) VALUES (@Baslik, @Resim, @BlogID)" 
                    UpdateCommand="UPDATE [Galeri] SET [GBaslik] = @Baslik, [GResim] = @Resim, [BlogID] = @BlogID WHERE [GaleriID] = @GaleriID">
                    <DeleteParameters>
                        <asp:Parameter Name="GaleriID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="GBaslik" Type="String" />
                        <asp:Parameter Name="GResim" Type="String" />
                        <asp:Parameter Name="BlogID" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="GBaslik" Type="String" />
                        <asp:Parameter Name="GResim" Type="String" />
                        <asp:Parameter Name="BlogID" Type="Int32" />
                        <asp:Parameter Name="GaleriID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" CssClass="table table-responsive" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="GaleriID" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="GaleriID" HeaderText="GaleriID" InsertVisible="False" ReadOnly="True" SortExpression="GaleriID" />
                        <asp:BoundField DataField="GBaslik" HeaderText="GBaslik" SortExpression="GBaslik" />
                        <asp:BoundField DataField="GResim" HeaderText="GResim" SortExpression="GResim" />
                        <asp:BoundField DataField="BlogID" HeaderText="BlogID" SortExpression="BlogID" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>

</asp:Content>
