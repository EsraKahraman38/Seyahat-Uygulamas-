<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SeyahatWeb.Login" %>


<!DOCTYPE html>
<html lang="tr">
<head>
    <title>Kullanici Giris</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="icon" type="image/png" href="Login_v1/images/icons/favicon.ico" />

    <link rel="stylesheet" type="text/css" href="Login_v1/vendor/bootstrap/css/bootstrap.min.css">

    <%--<link rel="stylesheet" type="text/css" href="Login_v1/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <a href="Yonetim/">Yonetim/</a>--%>
    <link rel="stylesheet" type="text/css" href="Login_v1/vendor/animate/animate.css">

    <link rel="stylesheet" type="text/css" href="Login_v1/vendor/css-hamburgers/hambutrgers.min.css">

    <link rel="stylesheet" type="text/css" href="Login_v1/vendor/select2/select2.min.css">

    <link rel="stylesheet" type="text/css" href="Login_v1/css/util.css">
    <link rel="stylesheet" type="text/css" href="Login_v1/css/main.css">

    <meta name="robots" content="noindex, follow">
    <script nonce="1d1fbec8-7db0-434a-beba-b71a503b7421">(function (w, d) { !function (f, g, h, i) { f[h] = f[h] || {}; f[h].executed = []; f.zaraz = { deferred: [], listeners: [] }; f.zaraz.q = []; f.zaraz._f = function (j) { return function () { var k = Array.prototype.slice.call(arguments); f.zaraz.q.push({ m: j, a: k }) } }; for (const l of ["track", "set", "debug"]) f.zaraz[l] = f.zaraz._f(l); f.zaraz.init = () => { var m = g.getElementsByTagName(i)[0], n = g.createElement(i), o = g.getElementsByTagName("title")[0]; o && (f[h].t = g.getElementsByTagName("title")[0].text); f[h].x = Math.random(); f[h].w = f.screen.width; f[h].h = f.screen.height; f[h].j = f.innerHeight; f[h].e = f.innerWidth; f[h].l = f.location.href; f[h].r = g.referrer; f[h].k = f.screen.colorDepth; f[h].n = g.characterSet; f[h].o = (new Date).getTimezoneOffset(); if (f.dataLayer) for (const s of Object.entries(Object.entries(dataLayer).reduce(((t, u) => ({ ...t[1], ...u[1] }))))) zaraz.set(s[0], s[1], { scope: "page" }); f[h].q = []; for (; f.zaraz.q.length;) { const v = f.zaraz.q.shift(); f[h].q.push(v) } n.defer = !0; for (const w of [localStorage, sessionStorage]) Object.keys(w || {}).filter((y => y.startsWith("_zaraz_"))).forEach((x => { try { f[h]["z_" + x.slice(7)] = JSON.parse(w.getItem(x)) } catch { f[h]["z_" + x.slice(7)] = w.getItem(x) } })); n.referrerPolicy = "origin"; n.src = "/cdn-cgi/zaraz/s.js?z=" + btoa(encodeURIComponent(JSON.stringify(f[h]))); m.parentNode.insertBefore(n, m) };["complete", "interactive"].includes(g.readyState) ? zaraz.init() : f.addEventListener("DOMContentLoaded", zaraz.init) }(w, d, "zarazData", "script"); })(window, document);</script>
</head>
<body>
    <div class="limiter">
        <div class="container-login100">
            <div class="wrap-login100">
                <div class="login100-pic js-tilt" data-tilt>
                    <img src="Login_v1/images/img-01.png" alt="IMG">
                </div>
                <form class="login100-form validate-form" runat="server">
                    <span class="login100-form-title">Kullanıcı Giriş</span>

                    <div class="wrap-input100 validate-input" data-validate="Kullanıcı Adı Gerekli">
                        <asp:TextBox ID="txtKulAdi" CssClass="input100" runat="server" placeholder="Kullanıcı Adı Giriniz"></asp:TextBox>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-envelope" aria-hidden="true"></i>
                        </span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate="Sifre Gerekli">
                        <asp:TextBox ID="txtSifre" CssClass="input100" runat="server" placeholder="Sifre Giriniz" TextMode="Password" ></asp:TextBox>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-lock" aria-hidden="true"></i>
                        </span>
                    </div>
                    <div class="container-login100-form-btn">
                        <asp:Button ID="BtnGiris" CssClass="login100-form-btn" runat="server" Text="Giris" OnClick="BtnGiris_Click" />
                    </div>
                    <div class="text-center p-t-12">
                        <span class="txt1" id="t">Kullanıcı Adı Sifre</span>
                        <a class="txt2" href="#">Unuttum</a>
                    </div>
                    <p style="align-content:center">
                        <asp:Label ID="lblUnuttum" runat="server" ForeColor="#CC0000"></asp:Label>

                    </p>
                    <div class="text-center p-t-136">
                        <a class="txt2" href="#">Yeni Hesap Olustur
                            <i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
                              <asp:Button ID="YeniKayit" CssClass="login100-form-btn" runat="server" Text="Yeni Kayıt" OnClick="YeniKayit_Click" />
                        </a>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script src="Login_v1/vendor/jquery/jquery-3.2.1.min.js"></script>

    <script src="Login_v1/vendor/bootstrap/js/popper.js"></script>
    <script src="Login_v1/vendor/bootstrap/js/bootstrap.min.js"></script>

    <script src="Login_v1/vendor/select2/select2.min.js"></script>

    <script src="Login_v1/vendor/tilt/tilt.jquery.min.js"></script>
    <script>
        $('.js-tilt').tilt({
            scale: 1.1
        })
    </script>

    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'UA-23581568-13');
    </script>

    <script src="Login_v1/js/main.js"></script>
    <script defer src="https://static.cloudflareinsights.com/beacon.min.js/vaafb692b2aea4879b33c060e79fe94621666317369993" integrity="sha512-0ahDYl866UMhKuYcW078ScMalXqtFJggm7TmlUtp0UlD4eQk0Ixfnm5ykXKvGJNFjLMoortdseTfsRT8oCfgGA==" data-cf-beacon='{"rayId":"79ae56f0eba68ee7","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2023.2.0","si":100}' crossorigin="anonymous"></script>
</body>
</html>

