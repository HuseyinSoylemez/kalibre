<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="Personel.aspx.cs" Inherits="kalibre.Personel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="card shadow-lg border-0 rounded-lg">
        <div class="card-header">
            <h3 class="text-center font-weight-light">Personel Bilgileri</h3>
        </div>

        <div class="card-body">

            <div class="form-group row">
                <div class="col-sm-3 mb-3 mb-sm-0">
                    <asp:TextBox class="form-control" ID="txt_adsoyad" placeholder="Ad Soyad" runat="server"></asp:TextBox>
                </div>
                <div class="col-sm-3 mb-3 mb-sm-0">
                    <asp:TextBox class="form-control tcno" ID="txt_tc" placeholder="TC NO" runat="server" MaxLength="11" onkeypress="return isNumberKey(event)" autocomplete="off"></asp:TextBox>
                    <h7 class="text-uppercase text-danger"></h7>

                </div>
                <div class="col-sm-3">
                    <asp:TextBox class="form-control" ID="txt_sno" placeholder="Sigorta NO" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox>

                </div>
                <div class="col-sm-3 ">
                    <asp:TextBox class="form-control" ID="txt_email" type="email" placeholder="Örn:asa@asa.com" aria-describedby="emailHelp" runat="server"></asp:TextBox>
                    <small id="emailHelp" class="form-text text-muted">Lütfen EPosta Adresini Giriniz...</small>
                </div>

            </div>


            <div class="form-group row">
                <div class="col-sm-3 mb-3 mb-sm-0">
                    <asp:DropDownList ID="ddl_mdurum" class="form-control" runat="server">
                        <asp:ListItem>Medeni Durum</asp:ListItem>
                        <asp:ListItem>Evli</asp:ListItem>
                        <asp:ListItem>Bekar</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-sm-3 mb-3 mb-sm-0">
                    <asp:DropDownList ID="ddl_odurum" class="form-control" runat="server">
                        <asp:ListItem>Öğrenim Durumu</asp:ListItem>
                        <asp:ListItem>İlkokul Mezunu</asp:ListItem>
                        <asp:ListItem>Ortaokul Mezunu</asp:ListItem>
                        <asp:ListItem>İlköğretim Mezunu</asp:ListItem>
                        <asp:ListItem>Lise Mezunu</asp:ListItem>
                        <asp:ListItem>Yüksek Okul Mezunu</asp:ListItem>
                        <asp:ListItem>Üniversite Mezunu</asp:ListItem>
                        <asp:ListItem>Yüksek Lisans</asp:ListItem>
                        <asp:ListItem>Doktora</asp:ListItem>
                    </asp:DropDownList>

                </div>
                <div class="col-sm-3">
                    <asp:TextBox class="form-control bfh-phone" data-format="+90 (ddd) ddd-dddd" ID="txt_cep1" placeholder="Örn: 5xxxxxxxx" runat="server"></asp:TextBox>

                </div>
                <div class="col-sm-3 ">
                    <asp:TextBox class="form-control bfh-phone" data-format="+90 (ddd) ddd-dddd" ID="txt_cep2" placeholder="Örn: 05xxxxxxxx" runat="server"></asp:TextBox>
                </div>

            </div>

            <div class="form-group row">
                <div class="col-sm-12 mb-3 mb-sm-0">

                    <asp:TextBox class="form-control" ID="txt_adres" placeholder="Adresi Giriniz..." runat="server"></asp:TextBox>
                </div>

            </div>
            <div class="form-group row">
                <div class="col-sm-6 mb-3 mb-sm-0">

                    <asp:DropDownList ID="Ddl_il" class="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Ddl_il_SelectedIndexChanged"></asp:DropDownList>
                </div>
                <div class="col-sm-6 mb-3 mb-sm-0">
                    <asp:DropDownList ID="Ddl_ilce" class="form-control" runat="server" AutoPostBack="True">
                    </asp:DropDownList>

                </div>
            </div>




            <h6 class="m-0 font-weight-bold text-primary">İş Yeri Bilgileri</h6>
            <hr />

            <div class="form-group row">
                <div class="col-sm-12 mb-3 mb-sm-0">

                    <asp:TextBox class="form-control" ID="txt_sube" placeholder="Şube İsmini Giriniz..." runat="server"></asp:TextBox>
                </div>

            </div>

            <div class="form-group row">
                <div class="col-sm-3 mb-3 mb-sm-0">


                    <asp:TextBox class="form-control datepicker" ID="txt_gtarih" placeholder="Giriş Tarihi..." AutoComplete="off" runat="server"></asp:TextBox>


                </div>
                <div class="col-sm-3">
                    <asp:TextBox class="form-control datepicker" ID="txt_ctarih" placeholder="Çıkış Tarihi..." runat="server" AutoComplete="off"></asp:TextBox>
                </div>


                <div class="col-sm-3 mb-3 mb-sm-0">
                    <asp:DropDownList ID="ddl_konum" class="form-control" runat="server">
                        <asp:ListItem>Seçiniz</asp:ListItem>
                        <asp:ListItem>Sekreter</asp:ListItem>
                        <asp:ListItem>Personel</asp:ListItem>
                        <asp:ListItem>Muhasebeci</asp:ListItem>
                        <asp:ListItem>Pazarlamacı</asp:ListItem>
                        <asp:ListItem>Teknik Servis</asp:ListItem>
                        <asp:ListItem>Satış Danışmanı</asp:ListItem>
                        <asp:ListItem>Yönetici</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-sm-3 ">
                    <asp:RadioButtonList ID="rb_durum" class="custom-control" runat="server">
                        <asp:ListItem Value="0">Aktif</asp:ListItem>
                        <asp:ListItem Value="1">Pasif</asp:ListItem>
                    </asp:RadioButtonList>
                </div>

            </div>

            <h6 class="m-0 font-weight-bold text-primary">Kullanıcı Bilgileri</h6>
            <hr />
            <asp:Panel ID="pnl_resim" runat="server" Visible="true">
                <div class="form-group row">
                    <div class="col-sm-4 mb-4 mb-sm-0">
                        <asp:Image ID="img_profil" CssClass="form-control mx-auto d-block img-fluid" runat="server" Width="150px" Height="200px" ImageUrl="profil/klc.jpg" />
                        <label for="staticText" class="col-sm-4 col-form-label"></label>
                        <i class="fa fa-sign-in"></i>
                        <span><i>Lütfen jpg, jpeg ya da png formatı kullanın.</i></span>
                    </div>

                    <div class="col-sm-8 mb-8 mb-sm-0">
                        <div class="input-group">
                            <div class="custom-file">
                                <asp:FileUpload class="form-control-file" ID="FlUpload" runat="server" />


                            </div>
                            <div class="input-group-append">
                                <asp:Button class="btn btn-outline-secondary" runat="server" Text="Resim Yükle" ID="res_ekle" OnClick="res_ekle_Click" />

                            </div>
                        </div>

                    </div>
                </div>
            </asp:Panel>

            <div class="form-group row">
                <div class="col-sm-4 mb-3 mb-sm-0">


                    <asp:TextBox class="form-control" ID="txt_kadi" placeholder="Kullanıcı Adı" runat="server"></asp:TextBox>


                </div>
                <div class="col-sm-4">
                    <asp:TextBox class="form-control form-control-user" type="password" ID="txt_sifre" placeholder="Şifre" runat="server"></asp:TextBox>
                </div>


                <div class="col-sm-4 mb-3 mb-sm-0">
                    <asp:DropDownList ID="Ddl_yetki" class="form-control" runat="server">
                        <asp:ListItem>Seçiniz</asp:ListItem>
                        <asp:ListItem>Yönetici</asp:ListItem>
                        <asp:ListItem>Personel</asp:ListItem>

                    </asp:DropDownList>
                </div>


            </div>


            <div class="form-group row">
                <div class="col-sm-3"></div>
                <div class="col-sm-3"></div>
                <div class="col-sm-3"></div>
                <div class="col-sm-3 mb-3 mb-sm-0 text-right">
                    <asp:Button class="btn btn-success" ID="btn_kaydet" runat="server" Text="Ekle" />
                    <asp:Button class="btn btn-success" ID="btn_ipt" runat="server" Text="İptal" Visible="False" />
                </div>
            </div>



        </div>
    </div>


    <div class="card mb-4">
        <div class="card-header">
            <i class="fas fa-table mr-1"></i>
            Personel Bilgileri
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <div class="dataTables_wrapper dt-bootstrap4" id="dataTable_wrapper">
                    <div class="row">
                        <div class="col-sm-12">

                            <asp:Repeater ID="rpt_personel" runat="server" OnItemCommand="rpt_personel_ItemCommand">
                                <HeaderTemplate>
                                    <table width="100%" class="table table-bordered dataTable table-striped" id="dataTable" role="grid" aria-describedby="dataTable_info" style="width: 100%;" cellspacing="0">
                                        <thead>
                                            <tr role="row">
                                                <th tabindex="0" class="sorting_asc" aria-controls="dataTable" aria-label="Name: activate to sort column descending" aria-sort="ascending" rowspan="1" colspan="1">Ad Soyad</th>
                                                <th tabindex="0" class="sorting" aria-controls="dataTable" aria-label="Position: activate to sort column ascending" rowspan="1" colspan="1">TC No</th>
                                                <th tabindex="0" class="sorting" aria-controls="dataTable" aria-label="Position: activate to sort column ascending" rowspan="1" colspan="1">Sigorta No</th>
                                                <th tabindex="0" class="sorting" aria-controls="dataTable" aria-label="Office: activate to sort column ascending" rowspan="1" colspan="1">E Mail</th>

                                                <th tabindex="0" class="sorting" aria-controls="dataTable" aria-label="Office: activate to sort column ascending" rowspan="1" colspan="1">Cep 1</th>
                                                <th tabindex="0" class="sorting" aria-controls="dataTable" aria-label="Office: activate to sort column ascending" rowspan="1" colspan="1">Cep 2</th>

                                                <th tabindex="0" class="sorting" aria-controls="dataTable" <%--style="width: 30.05px;"--%> aria-label="Age: activate to sort column ascending" rowspan="1" colspan="1">İşlem</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                        </tfoot>
                                        <tbody>
                                </HeaderTemplate>
                                <ItemTemplate>

                                    <tr class="odd" role="row">
                                        <td class="sorting_1"><%# Eval("AdSoyad") %></td>
                                        <td><%# Eval("TCNo") %></td>
                                        <td><%# Eval("SigortaNo") %></td>
                                        <td><%# Eval("Email") %></td>

                                        <td><%# Eval("Cep1") %></td>
                                        <td><%# Eval("Cep2") %></td>


                                        <td>
                                            <asp:Button ID="btn_sil" CssClass="btn btn-sm btn-outline-danger" CommandName="sil" CommandArgument='<%#Eval("PRS_ID") %>' Text="S" ToolTip="SİL" OnClientClick="return confirm('Personelin Tüm Bilgileri silinecek onaylıyor musunuz?');" runat="server" />
                                            <asp:Button ID="btn_dzn" CssClass="btn btn-sm btn-outline-primary" CommandName="dzn" CommandArgument='<%#Eval("PRS_ID") %>' Text="D" ToolTip="DÜZENLE" runat="server" />
                                        </td>

                                    </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </tbody>
                </table>
                                </FooterTemplate>
                            </asp:Repeater>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </div>



    <script>


        $(document).ready(function () {
            $('#dataTable').dataTable({
                "responsive": true,
                "bPaginate": true,
                "bLengthChange": true,
                "bFilter": true,
                "bSort": true,
                "bInfo": true,
                "pageLength": 7,
                "language": {
                    "url": "//cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/Turkish.json"
                }
            });

        });
    </script>
</asp:Content>
