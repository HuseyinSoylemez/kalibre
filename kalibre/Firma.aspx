<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="Firma.aspx.cs" Inherits="kalibre.Firma" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="card shadow-lg border-0 rounded-lg">
        <div class="card-header">
            <h3 class="text-center font-weight-light">Firma Bilgileri</h3>
        </div>

        <div class="card-body">

            
            <div class="form-group row">
                <div class="col-sm-2 mb-3 mb-sm-0">
                    <h5>Firma Ad:</h5> 
                </div>
                <div class="col-sm-10 mb-3 mb-sm-0">
                    <asp:TextBox class="form-control" ID="txt_ad" placeholder="Firmanın İsmini Giriniz..."  runat="server" ReadOnly="True"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-2 mb-3 mb-sm-0">
                    <h5>Kısa Ad:</h5> 
                </div>
                <div class="col-sm-10 mb-3 mb-sm-0">
                    <asp:TextBox class="form-control" ID="txt_kad" placeholder="Kısa Ad"  runat="server" ReadOnly="True"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-2 mb-3 mb-sm-0">
                    <h5>Adres:</h5> 
                </div>
                <div class="col-sm-10 mb-3 mb-sm-0">
                    <asp:TextBox class="form-control" ID="txt_adres1" placeholder="Adres"  runat="server" ReadOnly="True"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-2 mb-3 mb-sm-0">
                    <h5>Adres (ikinci satır):</h5> 
                </div>
                <div class="col-sm-10 mb-3 mb-sm-0">
                    <asp:TextBox class="form-control" ID="txt_adres2" placeholder="Adres (ikinci satır)"  runat="server" ReadOnly="True"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-2 mb-3 mb-sm-0">
                    <h5>İlçe:</h5> 
                </div>
                <div class="col-sm-10 mb-3 mb-sm-0">
                    <asp:TextBox class="form-control" ID="txt_ilce" placeholder="İlçe"  runat="server" ReadOnly="True"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-2 mb-3 mb-sm-0">
                    <h5>İl:</h5> 
                </div>
                <div class="col-sm-10 mb-3 mb-sm-0">
                    <asp:TextBox class="form-control" ID="txt_il" placeholder="İl"  runat="server" ReadOnly="True"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-2 mb-3 mb-sm-0">
                    <h5>Tel:</h5> 
                </div>
                <div class="col-sm-10 mb-3 mb-sm-0">
                    <asp:TextBox class="form-control" ID="txt_tel" placeholder="Tel"  runat="server" ReadOnly="True"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-2 mb-3 mb-sm-0">
                    <h5>Faks:</h5> 
                </div>
                <div class="col-sm-10 mb-3 mb-sm-0">
                    <asp:TextBox class="form-control" ID="txt_fax" placeholder="Faks"  runat="server" ReadOnly="True"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-2 mb-3 mb-sm-0">
                    <h5>Web Site:</h5> 
                </div>
                <div class="col-sm-10 mb-3 mb-sm-0">
                    <asp:TextBox class="form-control" ID="txt_web" placeholder="Web Site"  runat="server" ReadOnly="True"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-2 mb-3 mb-sm-0">
                    <h5>Mail:</h5> 
                </div>
                <div class="col-sm-10 mb-3 mb-sm-0">
                    <asp:TextBox class="form-control" ID="txt_mail" placeholder="Mail"  runat="server" ReadOnly="True"></asp:TextBox>
                </div>
            </div>


            
            <hr />
            <h6 class="m-0 font-weight-bold text-primary">Logo Ekle</h6>
            <span><i>Sertifikada logonun düzgün çıkması için png veya gif formatı kullanın.</i></span>
            
            <asp:Panel ID="pnl_resim" runat="server" Visible="true">
                <div class="form-group row">
                    <div class="col-sm-4 mb-4 mb-sm-0">
                        <asp:Image ID="img_profil" CssClass="mx-auto d-block img-fluid" runat="server" ImageUrl="img/logo.gif" />
                        
                       
                    </div>

                    <div class="col-sm-8 mb-8 mb-sm-0">
                        <div class="input-group">
                            <div class="custom-file">
                                <asp:FileUpload class="form-control-file" ID="FlUpload" runat="server" Visible="false" />


                            </div>
                            <div class="input-group-append">
                                <asp:Button class="btn btn-outline-secondary" runat="server" Text="Resim Yükle" ID="res_ekle" Visible="false" OnClick="res_ekle_Click" />

                            </div>
                        </div>

                    </div>
                </div>
            </asp:Panel>

            <hr />


            <div class="form-group row">
                <div class="col-sm-2"></div>
                <div class="col-sm-2"></div>
                <div class="col-sm-3"></div>
                <div class="col-sm-5 mb-3 mb-sm-0 text-right">
                    <asp:Button class="btn btn-success" ID="btn_gnc" runat="server" Text="Güncelleme Yapmak İstiyorum..." OnClick="btn_gnc_Click" />
                    <asp:Button class="btn btn-success" ID="btn_guncelle" runat="server" Text="Güncelle" Visible="False" OnClick="btn_guncelle_Click"/>

                    <asp:Button class="btn btn-danger" ID="btn_ipt" runat="server" Text="İptal" Visible="False" OnClick="btn_ipt_Click" />
                </div>
            </div>



        </div>
    </div>



</asp:Content>
