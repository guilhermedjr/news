<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="novaNoticia.aspx.cs" Inherits="AJAXFinal.novaNoticia" %>

<!DOCTYPE html>

<html>
<head>
    <title>Adicionar Notícia</title>

</head>
<body>

    <form id="form1" runat="server">
    <div id="Classer">
        Título
        <asp:TextBox ID="Titulo" runat="server"></asp:TextBox><br />
        Linha Fina
        <asp:TextBox ID="LinhaFina" runat="server"></asp:TextBox><br />
        Notícia
        <asp:TextBox ID="Noticia" runat="server"></asp:TextBox><br />

        Categoria
            <asp:DropDownList ID="Categoria" runat="server">
                <asp:ListItem Text="Política" Value="1"/>
                <asp:ListItem Text="Economia" Value="2"/>
                <asp:ListItem Text="Internacional" Value="3"/>
                <asp:ListItem Text="Educação" Value="4"/>
                <asp:ListItem Text="Tecnologia" Value="5"/>
                 <asp:ListItem Text="Cultura" Value="6"/>

            </asp:DropDownList>

            <br />
            Imagem
        <asp:FileUpload ID="Imagemzin" runat="server" /><br />
        <asp:Button ID="Submiter" runat="server" Text="Enviar" onclick="Submiter_Click" />

    </div>
    </form>

</body>
</html>
