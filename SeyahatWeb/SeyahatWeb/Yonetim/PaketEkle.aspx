<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="PaketEkle.aspx.cs" Inherits="SeyahatWeb.Yonetim.PaketEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Yeni Tür Paketi Ekleme Sayfası</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <div div="forms-sample" runat="server">
                    <div class="form-group">
                        <label for="exampleInputName1">Tur Adı</label>
                        <asp:TextBox ID="txtAd" CssClass="form-control" runat="server" placeholder="Tur Adı Giriniz"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail3">Fiyat</label>
                        <asp:TextBox ID="txtFiyat" CssClass="form-control" runat="server" placeholder="Fiyat Giriniz"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword4">Süre</label>
                        <asp:TextBox ID="txtSure" CssClass="form-control" runat="server" placeholder="Süre Giriniz"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputCity1">Konum</label>
                        <asp:TextBox ID="txtKonum" CssClass="form-control" runat="server" placeholder="Konum Giriniz"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputName1">Blog Kategorisi</label>
                        <asp:DropDownList ID="DropBlogKat" runat="server" CssClass="form-control" placeholder="Kategori Seciniz" DataSourceID="SqlDataSource1" DataTextField="BKAd" DataValueField="BlogKategoriID"></asp:DropDownList>
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GoTripDB2ConnectionString4 %>" SelectCommand="SELECT * FROM [BlogKategori]"></asp:SqlDataSource>

                    <div class="form-group">
                        <label for="exampleTextarea1">Tur Detay</label>
                        <asp:TextBox ID="txtDetay" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Tur Detaylarını giriniz"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Tur Resim</label>
                        <input type="file" name="img[]" class="file-upload-default" />
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info" />
                        <asp:Button ID="BtnResimYukle" runat="server" Text="Resim Yükle" OnClick="BtnResimYukle_Click" />
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblResim" runat="server" Text=""></asp:Label>
                    </div>

                    <asp:Button ID="BtnKaydet" runat="server" Text="Kaydet" CssClass="btn btn-gradient-primary btn-rounded btn-fw" OnClick="BtnKaydet_Click" />
                    <asp:Button ID="BtnVazgec" runat="server" Text="Vazgeç" CssClass="btn btn-gradient-light btn-rounded btn-fw" OnClick="BtnVazgec_Click" />

                </div>
            </div>
        </div>
    </div>
    <div class="card">
        <div class="card-body">
            <div div="forms-sample" runat="server">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GoTripDB2ConnectionString4 %>"
                    DeleteCommand="DELETE FROM [TurPaket]
                    WHERE [TurPaketID] = @TurPaketID"
                    InsertCommand="INSERT INTO [TurPaket] ([TPAd], [TPFiyat], [TPSure], [TPKonum], [TPDetay], [TPResim], [BlogKategoriID]) VALUES (@Adi, @Fiyat, @Sure, @Konum, @Detay, @Resim, @BlogKategoriID)"
                    SelectCommand="SELECT * FROM [TurPaket] "
                    <%--SelectCommand="select bk.BlogKategoriID,t.TurPaketID,t.TPAd,t.TPFiyat,t.TPSure,t.TPKonum,t.TPDetay,t.TPResim,bk.BKAd from TurPaket t JOIN BlogKategori bk On t.BlogKategoriID=bk.BlogKategoriID";--%>
                    UpdateCommand="UPDATE [TurPaket] SET [TPAd] = @Adi, [TPFiyat] = @Fiyat, [TPSure] = @Sure, [TPKonum] = @Konum, [TPDetay] = @Detay, [TPResim] = @Resim, [BlogKategoriID] = @BlogKategoriID WHERE [TurPaketID] = @TurPaketID">
                    <DeleteParameters>
                        <asp:Parameter Name="TurPaketID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="TPAd" Type="String" />
                        <asp:Parameter Name="TPFiyat" Type="Int32" />
                        <asp:Parameter Name="TPSure" Type="Int32" />
                        <asp:Parameter Name="TPKonum" Type="String" />
                        <asp:Parameter Name="TPDetay" Type="String" />
                        <asp:Parameter Name="TPResim" Type="String" />
                        <asp:Parameter Name="BlogKategoriID" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TPAd" Type="String" />
                        <asp:Parameter Name="TPFiyat" Type="Int32" />
                        <asp:Parameter Name="TPSure" Type="Int32" />
                        <asp:Parameter Name="TPKonum" Type="String" />
                        <asp:Parameter Name="TPDetay" Type="String" />
                        <asp:Parameter Name="TPResim" Type="String" />
                        <asp:Parameter Name="BlogKategoriID" Type="Int32" />
                        <asp:Parameter Name="TurPaketID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CssClass="table table-borderless" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="TurPaketID" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="TurPaketID" HeaderText="TurPaketID" InsertVisible="False" ReadOnly="True" SortExpression="TurPaketID" />
                        <asp:BoundField DataField="TPAd" HeaderText="TPAd" SortExpression="TPAd" />
                        <asp:BoundField DataField="TPFiyat" HeaderText="TPFiyat" SortExpression="TPFiyat" />
                        <asp:BoundField DataField="TPSure" HeaderText="TPSure" SortExpression="TPSure" />
                        <asp:BoundField DataField="TPKonum" HeaderText="TPKonum" SortExpression="TPKonum" />
                        <asp:BoundField DataField="TPDetay" HeaderText="TPDetay" SortExpression="TPDetay" />
                        <asp:BoundField DataField="TPResim" HeaderText="TPResim" SortExpression="TPResim" />
                        <asp:BoundField DataField="BlogKategoriID" HeaderText="BlogKategoriID" SortExpression="BlogKategoriID" />
                    </Columns>
                </asp:GridView>
               
            </div>
        </div>
    </div>
</asp:Content>

