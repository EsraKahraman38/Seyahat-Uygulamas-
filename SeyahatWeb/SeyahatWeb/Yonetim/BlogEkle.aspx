<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="BlogEkle.aspx.cs" Inherits="SeyahatWeb.Yonetim.BlogEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Blog Ekleme Sayfası</h3>
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
                        <label for="exampleTextarea1">Detay</label>
                        <asp:TextBox ID="txtDetay" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Blog Detaylarını Giriniz"></asp:TextBox><br />
                        <asp:Label ID="lblTarih" runat="server"></asp:Label>
                    </div>
                    <br />
                    <asp:Button ID="BtnKaydet" runat="server" Text="Kaydet" CssClass="btn btn-gradient-primary btn-rounded btn-fw" OnClick="BtnKaydet_Click" />
                    <asp:Button ID="BtnVazgec" runat="server" Text="Vazgeç" CssClass="btn btn-gradient-light btn-rounded btn-fw" OnClick="BtnVazgec_Click" />

                </div>
            </div>
        </div>
    </div>


    <div class="card">
        <div class="card-body">
            <div div="forms-sample" runat="server">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GoTripDB2ConnectionString4 %>"
                    DeleteCommand="DELETE FROM [Blog] WHERE [BlogID] = @BlogID" 
                    InsertCommand="INSERT INTO [Blog] ([BBaslik], [BOzet], [BResim], [BDetay], [Tarih]) VALUES (@Baslik, @Ozet, @Resim, @Detay, @Tarih)" SelectCommand="SELECT * FROM [Blog]"
                    UpdateCommand="UPDATE [Blog] SET [BBaslik] = @Baslik, [BOzet] = @Ozet, [BResim] = @Resim, [BDetay] = @Detay, [Tarih] = @Tarih WHERE [BlogID] = @BlogID">
                    <DeleteParameters>
                        <asp:Parameter Name="BlogID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="BBaslik" Type="String" />
                        <asp:Parameter Name="BOzet" Type="String" />
                        <asp:Parameter Name="BResim" Type="String" />
                        <asp:Parameter Name="BDetay" Type="String" />
                        <asp:Parameter Name="Tarih" Type="DateTime" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="BBaslik" Type="String" />
                        <asp:Parameter Name="BOzet" Type="String" />
                        <asp:Parameter Name="BResim" Type="String" />
                        <asp:Parameter Name="BDetay" Type="String" />
                        <asp:Parameter Name="BTarih" Type="DateTime" />
                        <asp:Parameter Name="BlogID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CssClass="table table-borderless" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="BlogID" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="BlogID" HeaderText="BlogID" InsertVisible="False" ReadOnly="True" SortExpression="BlogID" />
                        <asp:BoundField DataField="BBaslik" HeaderText="BBaslik" SortExpression="BBaslik" />
                        <asp:BoundField DataField="BOzet" HeaderText="BOzet" SortExpression="BOzet" />
                        <asp:BoundField DataField="BResim" HeaderText="BResim" SortExpression="BResim" />
                        <asp:BoundField DataField="BDetay" HeaderText="BDetay" SortExpression="BDetay" />
                        <asp:BoundField DataField="Tarih" HeaderText="Tarih" SortExpression="Tarih" />
                    </Columns>
                </asp:GridView>

            </div>
        </div>
    </div>
</asp:Content>
