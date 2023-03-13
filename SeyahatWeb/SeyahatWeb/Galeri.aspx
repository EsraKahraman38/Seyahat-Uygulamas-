<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Galeri.aspx.cs" Inherits="SeyahatWeb.Galeri" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Galeri</h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server">
        <%-- <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="Baslik" DataValueField="GaleriID"></asp:DropDownList>--%>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GoTripDB2ConnectionString4 %>" SelectCommand="SELECT Galeri.*, Blog.* FROM Galeri INNER JOIN Blog ON Galeri.BlogID = Blog.BlogID"></asp:SqlDataSource>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" DataKeyField="GaleriID">
            <ItemTemplate>

                <%-- <div class="section-top-border">
                    <h3><%# Eval("GBaslik") %></h3>
                    <p><%# Eval("BBaslik") %> </p>
                    <div class="row gallery-item">

                        <div class="col-md-4">
                            <img class="card-img rounded-0" src="images/blog/<%# Eval("BResim") %>" alt="">
                            <p><%# Eval("BDetay") %> </p>
                        </div>
                        <div class="col-md-4">
                            <img class="card-img rounded-0" src="images/blog/<%# Eval("GResim") %>" alt="">
                        </div>
                </div>
                </div>--%>


                <div class="section-top-border">
                    <div class="row gallery-item">
                        <h3><%# Eval("GBaslik") %></h3>
      
                        <div class="col-md-4">
                            <img class="card-img rounded-0" src="images/blog/<%# Eval("BResim") %>" alt="">
                            <p><%# Eval("BDetay") %> </p>
                        </div>                  

                    </div>
                </div>


                <%-- <article class="blog_item">
                                <div class="blog_item_img">
                                    <img class="card-img rounded-0" src="images/paket/<%# Eval("Resim") %>" alt="">
                                </div>

                                <div class="Galeri">
                                    <h2></h2>
                                    <p><%# Eval("Detay") %></p>
                                    <ul class="galeri-info-link">
                                        <li><a href="#"><i class="fa fa-user"></i>Seyahat, Yaşam Merkezi</a></li>
                                    </ul>
                                </div>
                            </article>--%>
            </ItemTemplate>
        </asp:DataList>


        <%--<h3>Tatillerden Kareler</h3>
        <div class="row gallery-item">
            <a href="assets/img/elements/g1.jpg" class="img-pop-up">
                    <div class="single-gallery-image" style="background: url(assets/img/elements/g1.jpg);"></div>
                </a>
        </div>

        <h3>Çalışanların Emekleri</h3>
        <div class="row gallery-item">
            <a href="assets/img/elements/g1.jpg" class="img-pop-up">
                    <div class="single-gallery-image" style="background: url(assets/img/elements/g1.jpg);"></div>
                </a>
        </div>--%>

        <%--<div class="col-md-4">
                <a href="assets/img/elements/g2.jpg" class="img-pop-up">
                    <div class="single-gallery-image" style="background: url(assets/img/elements/g2.jpg);"></div>
                </a>
            </div>
            <div class="col-md-4">
                <a href="assets/img/elements/g3.jpg" class="img-pop-up">
                    <div class="single-gallery-image" style="background: url(assets/img/elements/g3.jpg);"></div>
                </a>
            </div>
            <div class="col-md-4">
                <a href="assets/img/elements/g4.jpg" class="img-pop-up">
                    <div class="single-gallery-image" style="background: url(assets/img/elements/g4.jpg);"></div>
                </a>
            </div>
            <div class="col-md-4">
                <a href="assets/img/elements/g5.jpg" class="img-pop-up">
                    <div class="single-gallery-image" style="background: url(assets/img/elements/g5.jpg);"></div>
                </a>
            </div>
            <div class="col-md-4">
                <a href="assets/img/elements/g6.jpg" class="img-pop-up">
                    <div class="single-gallery-image" style="background: url(assets/img/elements/g6.jpg);"></div>
                </a>
            </div>--%

                    <%--<div class="col-md-6">
						<a href="assets/img/elements/g7.jpg" class="img-pop-up">
							<div class="single-gallery-image" style="background: url(assets/img/elements/g7.jpg);"></div>
						</a>
					</div>
					<div class="col-md-6">
						<a href="assets/img/elements/g8.jpg" class="img-pop-up">
							<div class="single-gallery-image" style="background: url(assets/img/elements/g8.jpg);"></div>
						</a>
					</div>--%>
    </form>
</asp:Content>
