<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="novaNoticia.aspx.cs" Inherits="AJAXFinal.novaNoticia" %>

<!DOCTYPE html>

<html>
<head>
    <title></title>
</head>
<body>

    <form id="form1" runat="server">
    <div id="Classer">
        <asp:TextBox ID="Titulo" runat="server"></asp:TextBox>
        <asp:TextBox ID="LinhaFina" runat="server"></asp:TextBox>
        <asp:TextBox ID="Noticia" runat="server"></asp:TextBox>

            <asp:DropDownList ID="Categoria" runat="server">
                <asp:ListItem Text="Política" Value="1"/>
                <asp:ListItem Text="Economia" Value="2"/>
                <asp:ListItem Text="Internacional" Value="3"/>
                <asp:ListItem Text="Educação" Value="4"/>
                <asp:ListItem Text="Tecnologia" Value="5"/>
                 <asp:ListItem Text="Cultura" Value="6"/>

            </asp:DropDownList>

        <asp:FileUpload ID="Image" runat="server" />
        <asp:Button ID="Submiter" runat="server" Text="Button" 
            onclick="Submiter_Click" />

    </div>
    </form>
        
    <script>
        var Sub = document.querySelector("#Submiter");
        Sub.ID = (sessionStorage.getItem('Login'));
    </script>
</body>
</html>
