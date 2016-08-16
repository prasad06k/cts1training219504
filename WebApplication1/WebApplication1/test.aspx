<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="WebApplication1.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>
                    <table cellspacing="0" rules="all" border="1">
                        <tr>
                            <th scope="col">name
                            </th>
                            <th scope="col">age
                            </th>
                            <th scope="col">phone
                            </th>
                            <th scope="col">gender 
                            </th>
                            <th scope="col">department
                            </th>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            <asp:Label ID="lblCustomerId" runat="server" Text='<%# Eval("name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="lblContactName" runat="server" Text='<%# Eval("age") %>' />
                        </td>
                        <td>
                            <asp:Label ID="lblCountry" runat="server" Text='<%# Eval("phone") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("gender") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("department") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>

            </asp:Repeater>
        </div>
    </form>
</body>
</html>
