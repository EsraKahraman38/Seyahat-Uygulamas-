<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="Kurumsal.aspx.cs" Inherits="SeyahatWeb.Yonetim.Kurumsal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Kurumsal İşlemleri Sayfası</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <div class="forms-sample">
                    <div class="form-group">
                        <label for="exampleInputName1">Başlık</label>
                        <asp:TextBox ID="txtBaslik" CssClass="form-control" runat="server" placeholder="Başlık Giriniz"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword4">Özet</label>
                        <asp:TextBox ID="txtOzet" CssClass="form-control" runat="server" placeholder="Özet Giriniz"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail3">Detay</label>
                        <asp:TextBox ID="txtDetay" CssClass="form-control" runat="server" TextMode="MultiLine" placeholder="Detay Giriniz"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label for="exampleInputName1">Tur Paketi Seciniz</label>

                        <asp:DropDownList ID="DropTurPaket" runat="server" CssClass="form-control" placeholder="Tur Paketi Seciniz" DataSourceID="SqlDataSource1" DataTextField="TPAd" DataValueField="TurPaketID"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GoTripDB2ConnectionString4 %>" SelectCommand="SELECT * FROM [TurPaket]"></asp:SqlDataSource>
                        <br />

                        <asp:Button ID="BtnEkle" runat="server" Text="Ekle" CssClass="btn btn-gradient-primary btn-rounded btn-fw" OnClick="BtnEkle_Click" />
                        <asp:Button ID="BtnVazgec" runat="server" Text="Vazgeç" CssClass="btn btn-gradient-light btn-rounded btn-fw" OnClick="BtnVazgec_Click" />
                        <br />
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="card">
        <div class="card-body">
            <div div="forms-sample" runat="server">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GoTripDB2ConnectionString4 %>"
                    DeleteCommand="DELETE FROM [Kurumsal] WHERE [KurumsalID] = @KurumsalID"
                    InsertCommand="INSERT INTO [Kurumsal] ([KBaslik], [KOzet], [KDetay], [TurPaketID]) VALUES (@KBaslik, @KOzet, @KDetay, @TurPaketID)"
                    SelectCommand="select k.TurPaketID, k.KurumsalID,k.KBaslik,k.KOzet,k.KDetay,t.TPAd from KURUMSAL k inner join TurPaket t on k.TurPaketID=t.TurPaketID "
                    UpdateCommand="UPDATE [Kurumsal] SET [KBaslik] = @KBaslik, [KOzet] = @KOzet, [KDetay] = @KDetay, [TurPaketID] = @TurPaketID WHERE [KurumsalID] = @KurumsalID">
                    <DeleteParameters>
                        <asp:Parameter Name="KurumsalID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="KBaslik" Type="String" />
                        <asp:Parameter Name="KOzet" Type="String" />
                        <asp:Parameter Name="KDetay" Type="String" />
                        <asp:Parameter Name="TurPaketID" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="KBaslik" Type="String" />
                        <asp:Parameter Name="KOzet" Type="String" />
                        <asp:Parameter Name="KDetay" Type="String" />
                        <asp:Parameter Name="TurPaketID" Type="Int32" />
                        <asp:Parameter Name="KurumsalID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CssClass="table table-borderless" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="KurumsalID" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="KurumsalID" HeaderText="KurumsalID" InsertVisible="False" ReadOnly="True" SortExpression="KurumsalID" />
                        <asp:BoundField DataField="KBaslik" HeaderText="KBaslik" SortExpression="KBaslik" />
                        <asp:BoundField DataField="KOzet" HeaderText="KOzet" SortExpression="KOzet" />
                        <asp:BoundField DataField="KDetay" HeaderText="KDetay" SortExpression="KDetay" />
                        <asp:BoundField DataField="TPAd" HeaderText="TPAd" SortExpression="TPAd" />
                    </Columns>
                </asp:GridView>


            </div>
        </div>
    </div>


    <%--    <div class="card">
        <div class="card-body">
            <div div="forms-sample" runat="server">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GoTripDB2ConnectionString4 %>" SelectCommand="SELECT Kurumsal.*, TurPaket.* FROM Kurumsal INNER JOIN TurPaket ON Kurumsal.TurPaketID = TurPaket.TurPaketID"></asp:SqlDataSource>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="KurumsalID"  CssClass="table table-borderless" DataSourceID="SqlDataSource2">
                    <ItemTemplate>
                        <asp:Label ID="KurumsalIDLabel" runat="server" Text='<%# Eval("KurumsalID") %>' />
                        <asp:Label ID="BaslikLabel" runat="server" Text='<%# Eval("Baslik") %>' />
                        <asp:Label ID="OzetLabel" runat="server" Text='<%# Eval("Ozet") %>' />
                        <asp:Label ID="DetayLabel" runat="server" Text='<%# Eval("Detay") %>' />
                        <asp:Label ID="AdiLabel" runat="server" Text='<%# Eval("Adi") %>' />

                    </ItemTemplate>
                </asp:DataList>

            </div>
        </div>
    </div>--%>
</asp:Content>
