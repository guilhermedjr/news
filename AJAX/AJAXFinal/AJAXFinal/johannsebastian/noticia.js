window.onload = initPage;
var Categor;
function initPage() {
    var Categor;
    Code = sessionStorage.getItem('Code');
    $.post("noticia.aspx",{C:Code},function(Ciocollata){
        var Noticer = document.querySelector("#Noticer");
        let Notice = Ciocollata.split('☺');
        Noticer.innerHTML =
        `
        <div class="col1de1">
				<img class="imgCol1de1" src="images/noticias/${Notice[0]}.jpg">
				<h1 class="titulo">${Notice[1]}</h1>
				<h2 class="linhaFina">${Notice[2]}</h2>
				
				${Notice[3]}
				
				<div class="clsAutor fl">
					<p><strong>${Notice[4]}</strong></p>
				</div>
        `
        Categor = Notice[5];
        $.post("Noticer.aspx",{Ca:Categor, V:Notice[0]},function(Ciocollata){
          let Noticer = Ciocollata.split('☻');
            Noticer.pop();
            Noticer.forEach(element => {
              var Separar = element.split('☺');
              let Seifer = document.querySelector("#Adler");
              Seifer.innerHTML += 
              `
              <div class="col1de3">
                <a href="noticia.html?n=${Separar[0]}" class="linkPadrao" onclick="Taker(${Separar[0]})">
                <img class="imgCol1de3" src="images/noticias/${Separar[0]}.jpg">
                <h1 class="titulo">${Separar[1]}</h1>
                <h2 class="linhaFina">${Separar[2]}</h2>
                </a>
              </div>
              `
            });
    
        });

    });

}

function Taker(Code){
  sessionStorage.setItem('Code',Code);
  alert(sessionStorage.getItem('Code'));

}