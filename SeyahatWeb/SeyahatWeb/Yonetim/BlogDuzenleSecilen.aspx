<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="BlogDuzenleSecilen.aspx.cs" Inherits="SeyahatWeb.Yonetim.BlogDuzenleSecilen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Blog Düzenleme Sayfası</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <div class="forms-sample">
                    <div class="form-group">
                        <label for="exampleInputName1">Başlık</label>
                        <asp:TextBox ID="txtBaslik" CssClass="form-control" runat="server" placeholder="Başlık Giriniz"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword4">Kategori</label>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" placeholder="Kategori Seçiniz" DataSourceID="SqlDataSource1" DataTextField="Adi" DataValueField="BlogKategoriID"></asp:DropDownList>
                    </div>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GoTripDBConnectionString %>" SelectCommand="SELECT * FROM [BlogKategori]"></asp:SqlDataSource>

                    <div class="form-group">
                        <label for="exampleInputEmail3">Özet</label>
                        <asp:TextBox ID="txtOzet" CssClass="form-control" runat="server" TextMode="MultiLine" Height="100px" placeholder="Özet Giriniz"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Resim</label>
                        <input type="file" name="img[]" class="file-upload-default" />
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info" />
                        <asp:Button ID="BtnResimYukle" runat="server" Text="Resim Yükle" CssClass="btn btn-gradient-primary" OnClick="BtnResimYukle_Click" />
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblResim" runat="server" Text=""></asp:Label>
                    </div>

                    <div class="form-group">
                        <label for="exampleTextarea1">Blog Detay</label>
                        <asp:TextBox ID="txtDetay" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Blog Detaylarını Giriniz"></asp:TextBox><br />
                        <asp:Label ID="lblTarih" runat="server"></asp:Label>
                    </div>
                    <br />
                    <asp:Button ID="BtnGuncelle" runat="server" Text="Güncelle" CssClass="btn btn-gradient-success btn-rounded btn-fw" OnClick="BtnGuncelle_Click1" />
                </div>
            </div>
        </div>
    </div>

    <div class="card">
        <div class="card-body">
            <div div="forms-sample" runat="server">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GoTripDB2ConnectionString4 %>" DeleteCommand="DELETE FROM [Blog] WHERE [BlogID] = @BlogID" InsertCommand="INSERT INTO [Blog] ([Baslik], [Ozet], [Resim], [Detay], [Tarih]) VALUES (@Baslik, @Ozet, @Resim, @Detay, @Tarih)" SelectCommand="SELECT * FROM [Blog]" UpdateCommand="UPDATE [Blog] SET [Baslik] = @Baslik, [Ozet] = @Ozet, [Resim] = @Resim, [Detay] = @Detay, [Tarih] = @Tarih WHERE [BlogID] = @BlogID">
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
                        <asp:TemplateField  >
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# Eval("BlogID",BlogDuzenleSecilen.aspx?BlogID={ 0}) %>' runat="server">Düzenle</asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="BlogID" HeaderText="BlogID" InsertVisible="False" ReadOnly="True" SortExpression="BlogID" />
                        <asp:BoundField DataField="Baslik" HeaderText="Baslik" SortExpression="Baslik" />
                        <asp:BoundField DataField="Ozet" HeaderText="Ozet" SortExpression="Ozet" />
                        <asp:BoundField DataField="Resim" HeaderText="Resim" SortExpression="Resim" />
                        <asp:BoundField DataField="Detay" HeaderText="Detay" SortExpression="Detay" />
                        <asp:BoundField DataField="Tarih" HeaderText="Tarih" SortExpression="Tarih" />
                    </Columns>
                </asp:GridView>

            </div>
        </div>
    </div>

</asp:Content>
