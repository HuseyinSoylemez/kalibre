<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="Kategori.aspx.cs" Inherits="kalibre.Kategori" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Kategori Ekle</h6>
        </div>

        <div class="card-body">

            <div class="form-group row">
                <div class="col-sm-4 mb-3 mb-sm-0">
                    <asp:TextBox class="form-control" ID="txt_tip" placeholder="Kategori Adı" runat="server"></asp:TextBox>
                </div>
                

                <div class="col-sm-2 ">

                    <asp:Button class="btn btn-success" ID="btn_kaydet" runat="server" Text="Ekle" OnClick="btn_kaydet_Click" />
                    <asp:Button class="btn btn-success" ID="btn_ipt" runat="server" Text="İptal" OnClick="btn_ipt_Click" Visible="False" />
                </div>

                <div class="col-sm-6 ">

                    <div class="table-responsive">
                        <div class="dataTables_wrapper dt-bootstrap4" id="dataTable_wrapper">
                            <div class="row">
                                <div class="col-sm-12">

                                    <asp:Repeater ID="rpt_tip" runat="server" OnItemCommand="rpt_tip_ItemCommand">
                                        <HeaderTemplate>
                                            <table width="100%" class="table table-bordered dataTable" id="dataTable1" role="grid" aria-describedby="dataTable_info" style="width: 100%;" cellspacing="0">
                                                <thead>
                                                    <tr role="row">
                                                        <th tabindex="0" class="sorting_asc" aria-controls="dataTable" style="width: 114.97px;" aria-label="Name: activate to sort column descending" aria-sort="ascending" rowspan="1" colspan="1">Kategori Adı</th>

                                                        <th tabindex="0" class="sorting" aria-controls="dataTable" style="width: 30.05px;" aria-label="Age: activate to sort column ascending" rowspan="1" colspan="1">İşlem</th>
                                                    </tr>
                                                </thead>
                                                <tfoot>
                                                   
                                                </tfoot>
                                                <tbody>
                                        </HeaderTemplate>
                                        <ItemTemplate>

                                            <tr class="odd" role="row">
                                                <td class="sorting_1"><%# Eval("KategoriAd") %></td>
                                                <td>
                                                    <asp:Button ID="btn_sil" CssClass="btn btn-sm btn-outline-danger" CommandName="sil" CommandArgument='<%#Eval("KT_ID") %>' Text="Sil" ToolTip="SİL" OnClientClick="return confirm('Kategori silinecek onaylıyor musunuz?');" runat="server" />
                                                    <asp:Button ID="btn_dzn" CssClass="btn btn-sm btn-outline-primary" CommandName="dzn" CommandArgument='<%#Eval("KT_ID") %>' Text="Dzn" ToolTip="DÜZENLE" runat="server" />
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





        </div>
    </div>


</asp:Content>
