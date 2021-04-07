<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="kalibre.login" %>

<!DOCTYPE html>
<html lang="tr">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Kalibrasyon Otomasyonu</title>
        <link href="css/styles.css" rel="stylesheet" />
        <script src="js/font-awesome/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Giriş</h3></div>
                                    <div class="card-body">
                                        <form id="form1" runat="server">
                                        
                                            <div class="form-group">
                                                <label class="small mb-1" for="inputKadi">Kullanıcı Adı</label>
                                                <%--<input class="form-control py-4" id="inputKadi" type="email" placeholder="Kullanıcı Adını Giriniz.." />--%>
                                                <asp:TextBox type="text" class="form-control form-control-user" id="txtKadi" aria-describedby="emailHelp" placeholder="Kullanıcı Adı" runat="server"></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                <label class="small mb-1" for="inputPassword">Şifre</label>
                                                <%--<input class="form-control py-4" id="inputPassword" type="password" placeholder="Şifrenizi Giriniz" />--%>
                                                <asp:TextBox type="password" class="form-control form-control-user" id="txtSifre" placeholder="Password" runat="server"></asp:TextBox>
                                            </div>
                                            <%--<div class="form-group">
                                                <div class="custom-control custom-checkbox">
                                                    <input class="custom-control-input" id="rememberPasswordCheck" type="checkbox" />
                                                    <label class="custom-control-label" for="rememberPasswordCheck">Remember password</label>
                                                </div>
                                            </div>--%>
                                            <div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <%--<a class="small" href="password.html">Forgot Password?</a>--%><span class="small text-primary"></span>
                                                <%--<a class="btn btn-primary" href="index.html">Giriş</a>--%>
                                                <asp:Button ID="btnGiris" class="btn btn-primary btn-user btn-block" runat="server" Text="Giriş" OnClick="btnGiris_Click" />
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer text-center">
                                        <div class="small"><a href="#">Anasayfa</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; <a href="http://ilerleyen.com.tr/" target="_blank">(hs)<sup>2</sup>Web</a> 2020</div>
                            <div class="text-muted">
                                <i>Kalibrasyon Otomasyonu</i>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="js/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
        <script src="js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>
