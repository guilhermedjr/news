window.onload = initPage;

function initPage(){
    $.post("../Website/Pages/index.aspx",null,function(Ciocollata){
        console.log(Ciocollata);

    });

}