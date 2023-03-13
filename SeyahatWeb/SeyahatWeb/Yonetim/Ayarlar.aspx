<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="Ayarlar.aspx.cs" Inherits="SeyahatWeb.Yonetim.Ayarlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Site Ayarları</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <div class="forms-sample">
                    <div class="form-group">
                        <label for="exampleInputName1">E-Mail</label>
                        <asp:TextBox ID="txtMail" CssClass="form-control" runat="server" placeholder="E-Mail Giriniz"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword4">Telefon</label>
                        <asp:TextBox ID="txtTel" CssClass="form-control" runat="server" placeholder="Telefon Giriniz"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail3">Adres</label>
                        <asp:TextBox ID="txtAdres" CssClass="form-control" runat="server" TextMode="MultiLine" Height="100px" placeholder="Adres Giriniz"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword4">Twitter</label>
                        <asp:TextBox ID="txtTwit" CssClass="form-control" runat="server" placeholder="Twitter"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword4">YouTube</label>
                        <asp:TextBox ID="txtYouTube" CssClass="form-control" runat="server" placeholder="YouTube"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword4">Instagram</label>
                        <asp:TextBox ID="txtInstagram" CssClass="form-control" runat="server" placeholder="Instagram"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword4">Facebook</label>
                        <asp:TextBox ID="txtFacebook" CssClass="form-control" runat="server" placeholder="Facebook"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword4">Linkedin</label>
                        <asp:TextBox ID="txtLinkedin" CssClass="form-control" runat="server" placeholder="Linkedin"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Logo</label>
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info" />
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblLogo" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="form-group">
                        <label for="exampleTextarea1">Site Açıklama</label>
                        <asp:TextBox ID="txtAciklama" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Site Açılaması Giriniz"></asp:TextBox><br />
                        <asp:Label ID="lblTarih" runat="server"></asp:Label>
                    </div>
                    <asp:Label ID="lblID" runat="server" Text=""></asp:Label><br />
                    <asp:Button ID="BtnYukle" runat="server" Text="Yükle" CssClass="btn btn-gradient-primary btn-rounded btn-fw" OnClick="BtnYukle_Click" />
                    <asp:Button ID="BtnGuncelle" runat="server" Text="Güncelle" CssClass="btn btn-gradient-success btn-rounded btn-fw" OnClick="BtnGuncelle_Click" />
                    <asp:Button ID="BtnVazgec" runat="server" Text="Vazgeç" CssClass="btn btn-gradient-light btn-rounded btn-fw" OnClick="BtnVazgec_Click" />

                </div>
            </div>
        </div>
    </div>

    <div class="card">
        <div class="card-body">
            <div div="forms-sample" runat="server">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GoTripDB2ConnectionString4 %>" SelectCommand="SELECT * FROM [Ayarlar]"></asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" CssClass="table table-borderless" AutoGenerateColumns="False" DataKeyNames="AyarlarID" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="AyarlarID" HeaderText="AyarlarID" InsertVisible="False" ReadOnly="True" SortExpression="AyarlarID" />
                        <asp:BoundField DataField="Mail" HeaderText="Mail" SortExpression="Mail" />
                        <asp:BoundField DataField="Telefon" HeaderText="Telefon" SortExpression="Telefon" />
                        <asp:BoundField DataField="Adres" HeaderText="Adres" SortExpression="Adres" />
                        <asp:BoundField DataField="Twitter" HeaderText="Twitter" SortExpression="Twitter" />
                        <asp:BoundField DataField="YouTube" HeaderText="YouTube" SortExpression="YouTube" />
                        <asp:BoundField DataField="Instagram" HeaderText="Instagram" SortExpression="Instagram" />
                        <asp:BoundField DataField="Facebook" HeaderText="Facebook" SortExpression="Facebook" />
                        <asp:BoundField DataField="Linkedin" HeaderText="Linkedin" SortExpression="Linkedin" />
                        <asp:BoundField DataField="Logo" HeaderText="Logo" SortExpression="Logo" />
                        <asp:BoundField DataField="Aciklama" HeaderText="Aciklama" SortExpression="Aciklama" />
                    </Columns>
                </asp:GridView>

            </div>
        </div>
    </div>
</asp:Content>
