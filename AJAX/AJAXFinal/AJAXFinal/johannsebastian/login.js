document.querySelector("#Benjamin").addEventListener("click",e=>{
    let Login = document.querySelector("#Logon").value;
    let Pass = document.querySelector("#PsychoPass").value;
    $.post("Login.aspx",{L:Login, P:Pass},function(Ciocollata){
        if (Ciocollata == "Autor") {
            window.location.href = "novaNoticia.aspx";

        } else if(Ciocollata == "Administrador"){
            window.location.href = "accept.html";

        } else{
            alert("Credenciais Inválidas");

        }

    });

});
