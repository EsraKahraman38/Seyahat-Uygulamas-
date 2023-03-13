<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="SeyahatWeb.Blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Blog</h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="row">
        <div class="col-lg-8 mb-5 mb-lg-0">
            <div class="blog_left_sidebar">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GoTripDB2ConnectionString4 %>" SelectCommand="SELECT * FROM [Blog]"></asp:SqlDataSource>
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" DataKeyField="BlogID">
                    <ItemTemplate>
                        <article class="blog_item">
                            <div class="blog_item_img">
                                <img class="card-img rounded-0" src="images/blog/<%# Eval("BResim") %>" alt="">
                                <a href="#" class="blog_item_date">
                                    <h3><%# Eval("Tarih") %></h3>
                                </a>
                            </div>

                            <div class="blog_details">
                                    <h2><%# Eval("BBaslik") %></h2>
                                <p><%# Eval("BDetay") %></p>
                                <ul class="blog-info-link">
                                    <li><a href="#"><i class="fa fa-user"></i>Seyahat, Yaşam Merkezi</a></li>
                                </ul>
                            </div>
                        </article>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>

        <%-- <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GoTripDB2ConnectionString %>" SelectCommand="SELECT * FROM [Blog] "></asp:SqlDataSource>
                        <asp:DataList ID="DataList1" runat="server" DataKeyField="BlogID" DataSourceID="SqlDataSource2">
                            <ItemTemplate>

                                <article class="blog_item">
                                    <div class="blog_item_img">
                                        <img class="card-img rounded-0" src="images/blog/<%# Eval("Resim") %>" alt="">
                                        <a href='<%# Eval("BlogID","BlogDetay.aspx?BlogID={ 0}") %>' class="blog_item_date">
                                            <h3><%# Eval("Tarih") %></h3>

                                        </a>
                                    </div>

                                    <div class="blog_details">
                                        <a class="d-inline-block" href='<%# Eval("BlogID","BlogDetay.aspx?BlogID={ 0}") %>'>
                                            <h2><%# Eval("Baslik") %></h2>
                                        </a>
                                        <p>
                                        </p>
                                        <ul class="blog-info-link">
                                            <li><a href='<%# Eval("BlogID","BlogDetay.aspx?BlogID={ 0}") %>'><i class="fa fa-user"></i><%# Eval("Adi") %></a></li>
                                            <li><a href='<%# Eval("BlogID","BlogDetay.aspx?BlogID={ 0}") %>'><i class="fa fa-comments"></i>03 Yorum</a></li>
                                        </ul>
                                    </div>
                                </article>
                                <br />
                            </ItemTemplate>
                        </asp:DataList>--%>

        <div class="col-lg-4">
            <div class="blog_right_sidebar">
                <aside class="single_sidebar_widget search_widget">
                    <form action="#">
                        <div class="form-group">
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" placeholder='Search Keyword'
                                    onfocus="this.placeholder = ''"
                                    onblur="this.placeholder = 'Anahter Kelimeler'">
                                <div class="input-group-append">
                                    <button class="btns" type="button"><i class="ti-search"></i></button>
                                </div>
                            </div>
                        </div>
                        <button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn"
                            type="arama">
                            Arama</button>
                    </form>
                </aside>

                <aside class="single_sidebar_widget post_category_widget">
                    <h4 class="widget_title">Katagori</h4>
                    <ul class="list cat-list">

                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GoTripDB2ConnectionString4 %>" SelectCommand="SELECT * FROM [BlogKategori]"></asp:SqlDataSource>
                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                            <ItemTemplate>
                                <ul class="list cat-list">
                                    <li>
                                        <a href="#" class="d-flex">
                                            <p><%# Eval("BKAd") %></p>
                                        </a>
                                    </li>
                                </ul>

                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </aside>

                <aside class="single_sidebar_widget popular_post_widget">
                    <h3 class="widget_title">Son Gönderiler</h3>
                    <div class="media post_item">
                        <img src="assets/img/post/post_1.png" alt="post">
                        <div class="media-body">
                            <a href="single-blog.html">
                                <h3>Eğlenceli Hayatlar...</h3>
                            </a>
                            <p>12.12.2022</p>
                        </div>
                    </div>
                    <div class="media post_item">
                        <img src="assets/img/post/post_2.png" alt="post">
                        <div class="media-body">
                            <a href="single-blog.html">
                                <h3>İnanılmaz Eğlenceler</h3>
                            </a>
                            <p>2 Hafta Önce</p>
                        </div>
                    </div>
                    <div class="media post_item">
                        <img src="assets/img/post/post_3.png" alt="post">
                        <div class="media-body">
                            <a href="single-blog.html">
                                <h3>Astronomi veya Astroloji</h3>
                            </a>
                            <p>3 Hafta Önce</p>
                        </div>
                    </div>
                    <div class="media post_item">
                        <img src="assets/img/post/post_4.png" alt="post">
                        <div class="media-body">
                            <a href="single-blog.html">
                                <h3>Asteroidler Teleskopu</h3>
                            </a>
                            <p>1 Hafta Önce</p>
                        </div>
                    </div>
                </aside>
                <aside class="single_sidebar_widget tag_cloud_widget">
                    <h4 class="widget_title">Etiketler</h4>
                    <ul class="list">
                        <li>
                            <a href="#">Proje</a>
                        </li>
                        <li>
                            <a href="#">Aşk</a>
                        </li>
                        <li>
                            <a href="#">Teknoloji</a>
                        </li>
                        <li>
                            <a href="#">Seyahat</a>
                        </li>
                        <li>
                            <a href="#">Restaurant</a>
                        </li>
                        <li>
                            <a href="#">Yaşam Tarzı</a>
                        </li>
                        <li>
                            <a href="#">Tasarım</a>
                        </li>
                        
                    </ul>
                </aside>


                <aside class="single_sidebar_widget instagram_feeds">
                    <h4 class="widget_title">Instagram Paylaşımları</h4>
                    <ul class="instagram_row flex-wrap">
                        <li>
                            <a href="#">
                                <img class="img-fluid" src="assets/img/post/post_5.png" alt="">
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img class="img-fluid" src="assets/img/post/post_6.png" alt="">
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img class="img-fluid" src="assets/img/post/post_7.png" alt="">
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img class="img-fluid" src="assets/img/post/post_8.png" alt="">
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img class="img-fluid" src="assets/img/post/post_9.png" alt="">
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img class="img-fluid" src="assets/img/post/post_10.png" alt="">
                            </a>
                        </li>
                    </ul>
                </aside>


                <aside class="single_sidebar_widget newsletter_widget">
                    <h4 class="widget_title">Yeni Kayıt</h4>

                    <form action="#">
                        <div class="form-group">
                            <input type="email" class="form-control" onfocus="this.placeholder = ''"
                                onblur="this.placeholder = 'Enter email'" placeholder='E-Mail' required>
                        </div>
                        <button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn"
                            type="submit">
                            Abone Ol</button>
                    </form>
                </aside>
            </div>
        </div>
    </div>
</asp:Content>









