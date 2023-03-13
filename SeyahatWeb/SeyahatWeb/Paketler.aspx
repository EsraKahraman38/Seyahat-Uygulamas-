<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Paketler.aspx.cs" Inherits="SeyahatWeb.Paketler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Paketler</h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form runat="server">
        <%--Nesnelerin çalışabilmesi için form elemanının içinde olması lazım --%>

        <div class="row">
            <div class="col-lg-12">
                <div class="section-tittle text-center">
                    <span>TUR PAKETLERİ</span>
                    <h2>Favori Turlar</h2>
                </div>
            </div>
        </div>
        <div class="row">

           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GoTripDB2ConnectionString4 %>" 
               SelectCommand="SELECT TurPaket.*, BlogKategori.* FROM TurPaket INNER JOIN BlogKategori ON TurPaket.BlogKategoriID = BlogKategori.BlogKategoriID"
               ></asp:SqlDataSource>

            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-place mb-30">
                            <div class="place-img">
                                <img src="images/paket/<%# Eval("TPResim") %>" alt='<%# Eval("TPAd") %>'>
                            </div>
                            <div class="place-cap">
                                <div class="place-cap-top">
                                    <span><i class="fas fa-star"></i><span>8.0 Değerlendirme</span> </span>
                                    <h3><a href="#"><%# Eval("TPAd") %></a></h3>
                                    <p class="dolor"><%# Eval("TPFiyat") %> TL <span>/ Kişi Başı</span></p>
                                </div>
                                <div class="place-cap-bottom">
                                    <ul>
                                        <li><i class="far fa-clock"></i><%# Eval("TPSure") %> Gün</li>
                                        <li><i class="fas fa-map-marker-alt"></i><%# Eval("TPKonum") %></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>

        </div>
    </form>
</asp:Content>
