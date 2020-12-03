window.onload = initPage;

function initPage() {
    console.log("DIO");
       $.post("index.aspx",null,function(Ciocollata){
        console.log(Ciocollata);

      });

}