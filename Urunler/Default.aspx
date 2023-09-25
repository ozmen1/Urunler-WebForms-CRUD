<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Urunler.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:darkcyan">
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Ürün Kodu"></asp:Label>
            <asp:TextBox ID="tbxUrunKodu" runat="server" style="margin-left: 57px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Ürün Adı"></asp:Label>
            <asp:TextBox ID="tbxUrunAdi" runat="server" style="margin-left: 70px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Stok Miktarı"></asp:Label>
            <asp:TextBox ID="tbxStokMiktari" runat="server" style="margin-left: 50px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Birim Fiyat"></asp:Label>
            <asp:TextBox ID="tbxBirimFiyati" runat="server" style="margin-left: 58px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Ürün Açıklama"></asp:Label>
            <br />
            <asp:TextBox ID="tbxUrunAciklama" runat="server" Height="40px" style="margin-left: 1px" Width="240px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" Text="Sonuç : "></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblSonuc" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnEkle" runat="server" Height="34px" OnClick="btnEkle_Click" Text="Ürün Ekle" Width="98px" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnSil" runat="server" Height="34px" Text="Ürün Sil" Width="98px" OnClick="btnSil_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnGuncelle" runat="server" Height="34px" Text="Ürün Güncelle" Width="98px" OnClick="btnGuncelle_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnListele" runat="server" Height="34px" OnClick="btnListele_Click" Text="Ürün Listele" Width="98px" />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" BackColor="White" runat="server" Width="1423px">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
