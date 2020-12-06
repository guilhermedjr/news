document.querySelector("#Benjamin").addEventListener("click",e=>{
    let Login = document.querySelector("#Logon").value;
    let Pass = document.querySelector("#PsychoPass").value;
    $.post("Login.aspx",{L:Login, P:Pass},function(Ciocollata){
        if (Ciocollata == "true") {
            alert("TRUE DA TRUE");

        } else{
            alert("BAIT DO BAIT");

        }

    });

});
