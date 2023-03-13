<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="PaketDuzenleSil.aspx.cs" Inherits="SeyahatWeb.Yonetim.PaketDuzenleSil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Paket Düzenleme Sayfası</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="card">
        <div class="card-body">
            <div runat="server">

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GoTripDB2ConnectionString4 %>" DeleteCommand="DELETE FROM [TurPaket] WHERE [TurPaketID] = @TurPaketID" InsertCommand="INSERT INTO [TurPaket] ([Adi], [Fiyat], [Sure], [Konum], [Detay], [Resim], [BlogKategoriID]) VALUES (@Adi, @Fiyat, @Sure, @Konum, @Detay, @Resim, @BlogKategoriID)" SelectCommand="SELECT * FROM [TurPaket]" UpdateCommand="UPDATE [TurPaket] SET [Adi] = @Adi, [Fiyat] = @Fiyat, [Sure] = @Sure, [Konum] = @Konum, [Detay] = @Detay, [Resim] = @Resim, [BlogKategoriID] = @BlogKategoriID WHERE [TurPaketID] = @TurPaketID">
                    <DeleteParameters>
                        <asp:Parameter Name="TurPaketID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Adi" Type="String" />
                        <asp:Parameter Name="Fiyat" Type="Int32" />
                        <asp:Parameter Name="Sure" Type="Int32" />
                        <asp:Parameter Name="Konum" Type="String" />
                        <asp:Parameter Name="Detay" Type="String" />
                        <asp:Parameter Name="Resim" Type="String" />
                        <asp:Parameter Name="BlogKategoriID" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Adi" Type="String" />
                        <asp:Parameter Name="Fiyat" Type="Int32" />
                        <asp:Parameter Name="Sure" Type="Int32" />
                        <asp:Parameter Name="Konum" Type="String" />
                        <asp:Parameter Name="Detay" Type="String" />
                        <asp:Parameter Name="Resim" Type="String" />
                        <asp:Parameter Name="BlogKategoriID" Type="Int32" />
                        <asp:Parameter Name="TurPaketID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" CssClass="table table-borderless" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="TurPaketID" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="TurPaketID" HeaderText="TurPaketID" InsertVisible="False" ReadOnly="True" SortExpression="TurPaketID" />
                        <asp:BoundField DataField="Adi" HeaderText="Adi" SortExpression="Adi" />
                        <asp:BoundField DataField="Fiyat" HeaderText="Fiyat" SortExpression="Fiyat" />
                        <asp:BoundField DataField="Sure" HeaderText="Sure" SortExpression="Sure" />
                        <asp:BoundField DataField="Konum" HeaderText="Konum" SortExpression="Konum" />
                        <asp:BoundField DataField="Detay" HeaderText="Detay" SortExpression="Detay" />
                        <asp:BoundField DataField="Resim" HeaderText="Resim" SortExpression="Resim" />
                        <asp:BoundField DataField="BlogKategoriID" HeaderText="BlogKategoriID" SortExpression="BlogKategoriID" />
                    </Columns>
                </asp:GridView>

            </div>
        </div>
    </div>
</asp:Content>




--%>
