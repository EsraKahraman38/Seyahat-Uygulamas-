<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Kurumsal.aspx.cs" Inherits="SeyahatWeb.Kurumsal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Kurumsal</h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <!-- slider Area End-->
    <!-- Support Company Start-->
    <div class="support-company-area servic-padding fix">
        <div class="row">
       
                <div class="blog_left_sidebar">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GoTripDB2ConnectionString4 %>" SelectCommand="SELECT Kurumsal.*, TurPaket.* FROM Kurumsal INNER JOIN TurPaket ON Kurumsal.TurPaketID = TurPaket.TurPaketID"></asp:SqlDataSource>
                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" DataKeyField="KurumsalID">
                        <ItemTemplate>
                            <article class="blog_item">
                                <div class="blog_item_img">
                                    <img class="card-img rounded-0" src="images/paket/<%# Eval("TPResim") %>" alt="">
                                </div>

                                <div class="kurumsal">
                                    <h2><%# Eval("KBaslik") %></h2>
                                    <p><%# Eval("KDetay") %></p>
                                    <p><%# Eval("TPDetay") %></p>
                                    <p><%# Eval("TPKonum") %></p>
                                    <ul class="kurumsal-info-link">
                                        <li><a href="#"><i class="fa fa-user"></i>Seyahat, Yaşam Merkezi</a></li>
                                    </ul>
                                </div>
                            </article>
                        </ItemTemplate>
                    </asp:DataList>

                </div>
                            </div>
            </div>
        </div>
    </div>

  <%--  <div class="support-company-area support-padding fix">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-xl-6 col-lg-6">
                    <div class="support-location-img mb-50">
                        <img src="assets/img/service/support-img2.jpg" alt="">
                        <div class="support-img-cap">
                            <span>Since 1993</span>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6">
                    <div class="right-caption">
                        <!-- Section Tittle -->
                        <div class="section-tittle section-tittle2">
                            <span>Kampanyalar hakkında</span>
                            <h3>Seyahate Çıkıyoruz ..!</h3>
                        </div>
                        <div class="support-caption">
                            <p>Seyahatler öncesinde ve sonrasında nasıl bir süreç işliyor?</p>
                            <div class="select-suport-items">
                                <label class="single-items">
                                    %100 Güvenilir Rezervasyon
                                        <input type="checkbox" checked="checked active">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="single-items">
                                    Tatil Sigortası
                                        <input type="checkbox" checked="checked active">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="single-items">
                                    Beş Yıldızlı Otellerde Konaklama
                                        <input type="checkbox" checked="checked active">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="single-items">
                                    Çocuklar İçin Özel Alanlar
                                        <input type="checkbox" checked="checked active">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="single-items">
                                    Aile Paketlerinde İndirim
                                        <input type="checkbox" checked="checked active">
                                    <span class="checkmark"></span>
                                </label>

                                <label class="single-items">
                                    Ücretsiz İptal
                                        <input type="checkbox" checked="checked active">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <a href="#" class="btn border-btn">Bizimle Seyahat Keyfi :)</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>

    
    <!-- Support Company End-->
    <!-- Our Services Start -->



   <%-- <div class="our-services servic-padding">
        <div class="container">
            <div class="row d-flex justify-contnet-center">
                <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6">
                    <div class="single-services text-center mb-10">
                        <div class="services-ion">
                            <span class="flaticon-tour"></span>
                        </div>
                        <div class="services-cap">
                            <h5>Klavuz<br />
                                Serisi
                            </h5>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6">
                    <div class="single-services text-center mb-10">
                        <div class="services-ion">
                            <span class="flaticon-pay"></span>
                        </div>
                        <div class="services-cap">
                            <h5>100% Güvenilir<br>
                                Seyahatler</h5>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6">
                    <div class="single-services text-center mb-10">
                        <div class="services-ion">
                            <span class="flaticon-experience"></span>
                        </div>
                        <div class="services-cap">
                            <h5>Müşteri<br>
                                Deneyimleri</h5>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6">
                    <div class="single-services text-center mb-10">
                        <div class="services-ion">
                            <span class="flaticon-good"></span>
                        </div>
                        <div class="services-cap">
                            <h5>98% Yolcularımız<br>
                                Mutlu</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>
   

    <!-- Our Services End -->
    <!-- Video Start Arera -->
    <div class="video-area video-bg pt-200 pb-200" data-background="assets/img/service/video-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="video-caption text-center">
                        <div class="video-icon">
                            <a class="popup-video" href="https://www.youtube.com/watch?v=aaj0YEJPWfM" tabindex="0"><i class="fas fa-play"></i></a>
                        </div>
                        <p class="pera1">Yer ve zaman uyumu yakalandığında
                            tatilin keyfine doyum olmaz..
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Video Start End -->
    <!-- Testimonial Start -->
    <div class="testimonial-area testimonial-padding">
        <div class="container ">
            <div class="row d-flex justify-content-center">
                <div class="col-xl-11 col-lg-11 col-md-9">
                    <div class="h1-testimonial-active">
                        <!-- Single Testimonial -->
                        <div class="single-testimonial text-center">
                            <!-- Testimonial Content -->
                            <div class="testimonial-caption ">
                                <div class="testimonial-top-cap">
                                    <img src="assets/img/icon/testimonial.png" alt="">
                                    <p>
                                        İnsanlar , hayvanlar ve doğanın iç içe birliktliğini sürdürdüğü
                                        muhteşem yerleri görmeniz için var gücümüzle çalışıyoruz...
                                    </p>
                                </div>
                                <!-- founder -->
                                <div class="testimonial-founder d-flex align-items-center justify-content-center">
                                    <div class="founder-img">
                                        <img src="assets/img/team/1.png" alt="">
                                    </div>
                                    <div class="founder-text founder-text2">
                                        <span>Esra Kahraman</span>
                                        <p>Kurucu</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Single Testimonial -->
                        <div class="single-testimonial text-center">
                            <!-- Testimonial Content -->
                            <div class="testimonial-caption ">
                                <div class="testimonial-top-cap">
                                    <img src="assets/img/icon/testimonial.png" alt="">
                                    <p>
                                        Sürdürülebilir bir doğa ve kaynakların verimli 
                                        kullanımı için yönetimi doğru yapmak gerekir...
                                    </p>
                                </div>
                                <!-- founder -->
                                <div class="testimonial-founder d-flex align-items-center justify-content-center">
                                    <div class="founder-img">
                                        <img src="assets/img/team/3.png"" alt="">
                                    </div>
                                    <div class="founder-text founder-text2">
                                        <span>Hilal Kahraman</span>
                                        <p>Kurucu Ortak</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
