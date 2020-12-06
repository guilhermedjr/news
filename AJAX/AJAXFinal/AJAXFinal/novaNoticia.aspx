<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="novaNoticia.aspx.cs" Inherits="AJAXFinal.novaNoticia" %>

<!DOCTYPE html>

<html>
<head>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <input class="txt" type="text" id="lname" name="lname" placeholder="Título"><br>
            <input class="txt" type="text" id="lname" name="lname" placeholder="Linha Fina"><br>
            <textarea class="txtG" placeholder="Texto">a</textarea>

            <select class="select" name="select">
                <option value="valor1">Valor 1</option> 
                <option value="valor2" selected>Valor 2</option>
                <option value="valor3">Valor 3</option>
            </select>

            <div class="areaFileUpload">
                a
            </div>

            <a class="botao">Enviar</a>
    
    </div>
    </form>
</body>
</html>
