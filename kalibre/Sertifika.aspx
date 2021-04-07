<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sertifika.aspx.cs" Inherits="kalibre.Sertifika" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Bootstrap CSS File -->
    <%--<link href="css/styles.css" rel="stylesheet" />--%>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/colorbox.css" rel="stylesheet" />

    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/jquery.colorbox-min.js"></script>
    <style>
        @media print {

            [class*="col-sm-"] {
                float: left;
            }

            [class*="col-xs-"] {
                float: left;
            }

            .col-sm-12, .col-xs-12 {
                width: 100% !important;
            }

            .col-sm-11, .col-xs-11 {
                width: 91.66666667% !important;
            }

            .col-sm-10, .col-xs-10 {
                width: 93.33333333% !important;
            }

            .col-sm-9, .col-xs-9 {
                width: 75% !important;
            }

            .col-sm-8, .col-xs-8 {
                width: 66.66666667% !important;
            }

            .col-sm-7, .col-xs-7 {
                width: 58.33333333% !important;
            }

            .col-sm-6, .col-xs-6 {
                width: 50% !important;
            }

            .col-sm-5, .col-xs-5 {
                width: 41.66666667% !important;
            }

            .col-sm-4, .col-xs-4 {
                width: 33.33333333% !important;
            }

            .col-sm-3, .col-xs-3 {
                width: 25% !important;
            }

            .col-sm-2, .col-xs-2 {
                width: 16.66666667% !important;
            }

            .col-sm-1, .col-xs-1 {
                width: 8.33333333% !important;
            }

            .col-sm-1,
            .col-sm-2,
            .col-sm-3,
            .col-sm-4,
            .col-sm-5,
            .col-sm-6,
            .col-sm-7,
            .col-sm-8,
            .col-sm-9,
            .col-sm-10,
            .col-sm-11,
            .col-sm-12,
            .col-xs-1,
            .col-xs-2,
            .col-xs-3,
            .col-xs-4,
            .col-xs-5,
            .col-xs-6,
            .col-xs-7,
            .col-xs-8,
            .col-xs-9,
            .col-xs-10,
            .col-xs-11,
            .col-xs-12 {
                float: left !important;
            }

            body {
                margin: 0;
                padding: 0 !important;
                min-width: 900px !important;
                zoom: 80% !important;
            }

            .container {
                width: auto;
                min-width: 900px !important;
            }

            body {
                font-size: 12px;
            }

            a[href]:after {
                content: none;
            }

            tr td {
                padding: 2px !important;
            }


            .noprint {
                display: none !important;
            }
        }
    </style>
    <script>
        function printData() {
            //var divToPrint = document.getElementById("gridi");
            //newWin = window.open("");
            //newWin.document.write(divToPrint.outerHTML);
            // newWin.print();
            //newWin.close();
            window.print()
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <input type="button" class="btn btn-primary noprint" value="Yazdır" onclick="printData()" />
        <div class="container">

            <div class="form-group row">
                <div class="col-sm-5">
                    <img src="img/gazi-logo.gif" class="mx-auto d-block img-fluid" width="100%" />
                </div>


                <div class="col-sm-5">
                    <h4 class="text-center danger" style="color: red; font-family: 'Times New Roman'; font-weight: 600">GAZİ KALİBRASYON LTD. ŞTİ.</h4>
                    <p class="text-center small">
                        <span class="text-">Çamtepe Mah. Mahmut Teyfik Atay Bulvarı</span><br />
                        <span class="text-center">Gaziantep Teknopark A Blok No:Z-13</span><br />
                        <span class="text-center">Şahinbey/GAZİANTEP</span><br />
                        <span class="text-center">Tel: 0505 663 50 10  Fax: 0342 360 24 71</span><br />
                        <span class="text-center">www.gazikalibrasyon.com</span>
                    </p>
                    <h3 class="text-center" style="font-family: 'Comic Sans MS'; font-weight: 600"><i>Kalibrasyon Sertifikası</i><br />
                        Calibration Certificate</h3>

                </div>
                <div class="col-sm-2" style="/*width: 200px; height: 200px; border: solid 2px; */vertical-align: middle;">
                    <div class="text-center">
                        <img src="img/AB-0124-K.K.gif" /></div>
                    <br />
                    <br />
                    <table class="table small" style="border:solid white 0px;">

                        <tbody>
                            <tr>
                                <td>
                                    <asp:Label ID="lbl_firma" runat="server" Text=""></asp:Label>AB-0124-K
                                </td>
                            </tr>
                            <tr>

                                <td>
                                    <asp:Label ID="lbl_etiket" runat="server" Text=""></asp:Label>a
                                </td>
                            </tr>
                            <tr>

                                <td>
                                    <asp:Label ID="lbl_tarih" runat="server" Text=""></asp:Label>a
                                </td>


                            </tr>

                        </tbody>
                    </table>

                </div>

            </div>



            <div class="form-group row">
                <%--<div class="col-sm-1"></div>--%>
                <div class="col-sm-12">

                    <table class="table">
                        <thead>
                        </thead>
                        <tbody class="large">
                            <tr>
                                <th scope="row">Cihazın Sahibi<br />
                                    <span class="small"><i>Customer</i></span>
                                </th>
                                <td>
                                    <h4>
                                        <asp:Label ID="lbl_musteri" runat="server" Text=""></asp:Label>adadsg sdg</h4>
                                    <br />
                                    <span>adana naklklda şlsdgşsd sşlkgsdfg lşjkg lşgj sglkmg </span>
                                    <br />
                                    <span>
                                        <asp:Label ID="lbl_ilce" runat="server" Text=""></asp:Label>/
                                        <asp:Label ID="lbl_il" runat="server" Text=""></asp:Label>
                                        adana naklklda şlsdgşsd sşlkgsdfg lşjkg lşgj sglkmg </span>
                                </td>

                            </tr>

                            <tr>
                                <th scope="row">İstek Numarası<br />
                                    <span class="small"><i>Order No</i></span>
                                </th>
                                <td>
                                    <h4>
                                        <asp:Label ID="lbl_istekno" runat="server" Text=""></asp:Label>200800-163</h4>

                                </td>

                            </tr>

                            <tr>
                                <th scope="row">Makine/Cihaz<br />
                                    <span class="small"><i>Instrument/Device</i></span>
                                </th>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label4" runat="server" Text=""></asp:Label>Sinbo</h4>
                                </td>
                            </tr>

                            <tr>
                                <th scope="row">İmalatçı<br />
                                    <span class="small"><i>Manufacturer</i></span>
                                </th>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label7" runat="server" Text=""></asp:Label>-</h4>               
                                </td>
                            </tr>

                            <tr>
                                <th scope="row">Tip<br />
                                    <span class="small"><i>Type</i></span>
                                </th>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label10" runat="server" Text=""></asp:Label>-</h4>
                                   
                                </td>
                            </tr>

                            <tr>
                                <th scope="row">Seri Numarası<br />
                                    <span class="small"><i>Serial Number</i></span>
                                </th>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label13" runat="server" Text=""></asp:Label>ADA-326985</h4>
                                    
                                </td>
                            </tr>

                            <tr>
                                <th scope="row">Kalibrasyon Tarihi<br />
                                    <span class="small"><i>Date of Calibretion</i></span>
                                </th>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label16" runat="server" Text=""></asp:Label>16.09.2020</h4>
                                   
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">Sertifikanın Sayfa Sayısı<br />
                                    <span class="small"><i>Number of pages of the Certificate</i></span>
                                </th>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label19" runat="server" Text=""></asp:Label>3</h4>
                                </td>

                            </tr>

                        </tbody>
                    </table>


                </div>
                <%--<div class="col-sm-1"></div>--%>
            </div>
            <hr />
            <div class="form-group row">
                <%--<div class="col-sm-1"></div>--%>
                <div class="col-sm-12">
                    <p>
                       <b>Bu kalibrasyon sertifikası, Uluslararası Birimler Sisteminde (SI) tanımlanmış birimleri realize eden ulusal ölçüm standartlarına izlenebilirliği belgeler.</b>
                        This calibration certificate documents the traceability to national standarts, which realize the unit of measurement according to the international System Of Units (SI).
                        <b>Kalibrasyon laboratuvarı olarak faaliyet gösteren Gazi Kalibrasyon TÜRKAK’  tan (AB-0124-K) ile (TS EN ISO/)IEC 17025 - 2017) standardına göre akredite edilmiştir.</b>
                        Gazi Calibration accredited by TURKAK under registration number (AB-0124-K) for (TS EN İSO-IEC 17025-2017) as Calibration Laboratory.
                        <b>Türk Akreditasyon kurumu (TÜRKAK) kalibrasyon sertifikalarının tanınırlığı konusunda Avrupa Akreditasyon Birliği (EA ) ile Çok Taraflı Anlaşma Ve Uluslar Arası Laboratuar Akreditasyon Birliği (ILAC) ile karşılıklı tanıma anlaşması imzalanmıştır. </b>
                        Turkish Accreditation Agency ( TURKAK ) is a signatory to the European co-operation for Accreditation (EA) Multilateral Agreement ( MLA) and to the International Laboratory Accreditation Cooheration (ILAC) Mutual Recognition Arrangement (MRA) for the recognition of calibration certificates .
                        <b>Ölçüm sonuçları,  genişletilmiş ölçüm belirsizlikleri ve kalibrasyon metotlar bu sertifikanın tamamlayıcı kısmı olan takip eden sayfalara verilmiştir .</b>
                        The measurements,  teh uncertainties with confidence probability and calibration methods are given on the following papes which are part of this certificate.

                    </p>


                </div>
                <%--<div class="col-sm-1"></div>--%>
            </div>

            
            <br />
            <br />
            <br />
            <div class="form-group row">
                <div class="col-sm-3" style="text-align: center;">
                    <div><b>Mühür </b></div>
                    Seal
                </div>
                <div class="col-sm-3" style="text-align: center;">
                    <div><b>Yayımlandığı Tarih</b> </div>
                    Date
                </div>
                <div class="col-sm-3" style="text-align: center;">
                    <div><b>Kalibrasyonu Yapan</b></div>
                    Calibration by
                </div>
                 <div class="col-sm-3" style="text-align: center;">
                    <div><b>Onaylayan</b> / Approval</div>
                    <b>Tarih</b> / Date
                </div>

            </div>

            <div class="form-group row">
                <div class="col-sm-3" style="text-align: center;">
                    <img src="img/mh.jpeg" class="mx-auto d-block img-fluid" width="60%" />
                </div>
                <div class="col-sm-3" style="text-align: center;">
                    <div><b>17.09.2020</b> </div>                 
                </div>
                <div class="col-sm-3" style="text-align: center;">
                    <div><b>İsmail EKİNCİ</b></div>
                </div>
                 <div class="col-sm-3" style="text-align: center;">
                    <div><b>ZAFER ALICI</b></div>
                    <b>17.09.2020</b>
                </div>

            </div>

            <br />

            <div class="form-group row">
                
                <div class="col-sm-12">
                    <div class="small"><b>Bu Sertifika, Laboratuvarın yazılı izni olmadan kısmen çoğaltılıp kopyalanamaz. İmzasız ve mühürsüz sertifikalar geçersizdir.</b></div>
                    <div class="small">This certificate shall not be reproduced other than in full except with the permission of the laboratory. Calibration certificatate without signature and sealare not valid.</div>
                </div>
               
            </div>

            <div class="form-group row small">
                <div class="col-sm-1" style="text-align: center;">
                    
                </div>
                <div class="col-sm-2" style="text-align: center;">
                    <img src="img/telephone.png" class="mx-auto d-block img-fluid" width="10%"  /> 0505 663 50 10
                </div>
                <div class="col-sm-2" style="text-align: center;">
                    <img src="img/fax.png" class="mx-auto d-block img-fluid" width="10%"  /> 0342 360 24 71                
                </div>
                <div class="col-sm-3" style="text-align: center;">
                    <img src="img/web-security.png" class="mx-auto d-block img-fluid" width="10%"  /> www.gazikalibrasyon.com
                </div>
                 <div class="col-sm-3" style="text-align: center;">
                     <img src="img/mail.png" class="mx-auto d-block img-fluid" width="10%"  /> info@gazikalibrasyon.com
                </div>
                <div class="col-sm-1" style="text-align: center;">
                    
                </div>

            </div>


        </div>
    </form>
</body>
</html>
