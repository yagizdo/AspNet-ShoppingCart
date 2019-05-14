<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Ürün Kodu:1"></asp:Label>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Ürün Adı:Ayakkabı"></asp:Label>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Stok:"></asp:Label>
        <asp:Label ID="kalanstok" runat="server" Text="50"></asp:Label>
        <br />
        <asp:Label ID="uyari" runat="server"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <table align="center" cellpadding="2" width="300px">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Ürün Kodu"></asp:Label>
                </td>
                <td>
                    :
                </td>
                <td>
                    <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Ürün Adı"></asp:Label>
                </td>
                <td>
                    :
                </td>
                <td>
                    <asp:TextBox ID="txtAdi" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Fiyat"></asp:Label>
                </td>
                <td>
                    :
                </td>
                <td>
                    <asp:TextBox ID="txtFiyat" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Adet"></asp:Label>
                </td>
                <td>
                    :
                </td>
                <td>
                    <asp:TextBox ID="txtAdet" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
                <td>
                    <asp:Button ID="btnSepeteEkle" runat="server" Text="Sepete Ekle" OnClick="btnSepeteEkle_Click" />
                </td>
            </tr>
        </table>
        <asp:DataList ID="DataList1" runat="server" CellPadding="4" OnItemCommand="DataList1_ItemCommand"
            ForeColor="#333333" BorderColor="Black" BorderWidth="1px" CellSpacing="2" Font-Bold="False"
            Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False"
            HorizontalAlign="Center" ShowFooter="False">
            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
            <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
            <ItemStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <HeaderTemplate>
                <table align="center" cellpadding="3" cellspacing="3" width="400">
                    <tr>
                        <td align="left" width="10px">
                            ID
                        </td>
                        <td align="left" width="100px">
                            AD
                        </td>
                        <td align="left" width="30px">
                            FIYAT
                        </td>
                        <td align="left" width="15px">
                            ADET
                        </td>
                        <td align="left" width="50px">
                            TUTAR
                        </td>
                        <td align="center" width="10px">
                            SİL
                        </td>
                    </tr>
                </table>
            </HeaderTemplate>
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                <table align="center" cellpadding="3" cellspacing="3" width="400">
                    <tr>
                        <td align="left" width="10px">
                            <%# Eval("id") %>
                        </td>
                        <td align="left" width="100px">
                            <%# Eval("isim") %>
                        </td>
                        <td align="left" width="30px">
                            <%# Eval("fiyat") %>
                        </td>
                        <td align="left" width="15px">
                            <%# Eval("adet") %>
                        </td>
                        <td align="left" width="50px">
                            <%# Eval("tutar") %>
                        </td>
                        <td align="center" width="10px">
                            <asp:LinkButton ID="btnSil" runat="server" CommandArgument='<%# Eval("id") %>' CommandName="sil">Sil</asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <br />
        <center>
            <asp:Label ID="lblToplam" runat="server"></asp:Label></center>
    </div>
    </form>
</body>
</html>
