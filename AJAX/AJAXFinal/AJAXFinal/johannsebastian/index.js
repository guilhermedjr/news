window.onload = initPage;

function initPage() {
  sessionStorage.setItem('Combox',1);
       $.post("index.aspx",null,function(Ciocollata){
        console.log(Ciocollata);
        let Noticer = Ciocollata.split('☻');
        Noticer.pop();
        Noticer.forEach(element => {
            var Separar = element.split('☺');
            console.log(Separar);
            var Inserter = document.querySelector("#noticias");
            switch (sessionStorage.getItem('Combox')) {
              case '1':
                Inserter.innerHTML += 
                `
                <div class="col1de1">
                  <a href="noticia.html?n=${Separar[0]}" class="linkPadrao">
                    <img class="imgCol1de1" src="images/noticias/${Separar[0]}.jpg">
                    <h1 class="titulo">${Separar[1]}</h1>
                    <h2 class="linhaFina">${Separar[2]}</h2>
                  </a>
                </div>
      
                ` 
                sessionStorage.setItem('Combox',2);

              break;
              case '2':
                Inserter.innerHTML += 
                `
                <div class="col1de2">
                  <a href="noticia.html?n=${Separar[0]}" class="linkPadrao">
                    <img class="imgCol1de2" src="images/noticias/${Separar[0]}.jpg">
                    <h1 class="titulo">${Separar[1]}</h1>
                    <h2 class="linhaFina">${Separar[2]}</h2>
                  </a>
                </div>
      
                ` 
                sessionStorage.setItem('Combox',3);
                
              break;
              case '3':
                Inserter.innerHTML += 
                `
                <div class="col1de2">
                  <a href="noticia.html?n=${Separar[0]}" class="linkPadrao">
                    <img class="imgCol1de2" src="images/noticias/${Separar[0]}.jpg">
                    <h1 class="titulo">${Separar[1]}</h1>
                    <h2 class="linhaFina">${Separar[2]}</h2>
                  </a>
                </div>
      
                ` 
                sessionStorage.setItem('Combox',4);
                
              break;
              case '4':
                Inserter.innerHTML += 
                `
                <div class="col1de3">
                  <a href="noticia.html?n=${Separar[0]}" class="linkPadrao">
                    <img class="imgCol1de3" src="images/noticias/${Separar[0]}.jpg">
                    <h1 class="titulo">${Separar[1]}</h1>
                    <h2 class="linhaFina">${Separar[2]}</h2>
                  </a>
                </div>
      
                ` 
                sessionStorage.setItem('Combox',5);
                
              break;
              case '5':
                Inserter.innerHTML += 
                `
                <div class="col1de3">
                  <a href="noticia.html?n=${Separar[0]}" class="linkPadrao">
                    <img class="imgCol1de3" src="images/noticias/${Separar[0]}.jpg">
                    <h1 class="titulo">${Separar[1]}</h1>
                    <h2 class="linhaFina">${Separar[2]}</h2>
                  </a>
                </div>
      
                ` 
                sessionStorage.setItem('Combox',6);
                
              break;
              case '6':
                Inserter.innerHTML += 
                `
                <div class="col1de3">
                  <a href="noticia.html?n=${Separar[0]}" class="linkPadrao">
                    <img class="imgCol1de3" src="images/noticias/${Separar[0]}.jpg">
                    <h1 class="titulo">${Separar[1]}</h1>
                    <h2 class="linhaFina">${Separar[2]}</h2>
                  </a>
                </div>
      
                ` 
                sessionStorage.setItem('Combox',7);
                
              break;
              case '7':
                Inserter.innerHTML += 
                `
                <div class="col1de3">
                  <a href="noticia.html?n=${Separar[0]}" class="linkPadrao">
                    <img class="imgCol1de3" src="images/noticias/${Separar[0]}.jpg">
                    <h1 class="titulo">${Separar[1]}</h1>
                    <h2 class="linhaFina">${Separar[2]}</h2>
                  </a>
                </div>
      
                ` 
                sessionStorage.setItem('Combox',8);
                
              break;
              case '8':
                Inserter.innerHTML += 
                `
                <div class="col1de3">
                  <a href="noticia.html?n=${Separar[0]}" class="linkPadrao">
                    <img class="imgCol1de3" src="images/noticias/${Separar[0]}.jpg">
                    <h1 class="titulo">${Separar[1]}</h1>
                    <h2 class="linhaFina">${Separar[2]}</h2>
                  </a>
                </div>
      
                ` 
                sessionStorage.setItem('Combox',9);
                
              break;
              case '9':
                Inserter.innerHTML += 
                `
                <div class="col1de3">
                  <a href="noticia.html?n=${Separar[0]}" class="linkPadrao">
                    <img class="imgCol1de3" src="images/noticias/${Separar[0]}.jpg">
                    <h1 class="titulo">${Separar[1]}</h1>
                    <h2 class="linhaFina">${Separar[2]}</h2>
                  </a>
                </div>
      
                ` 
                sessionStorage.setItem('Combox',1);
                
              break;

            }

        });

      });

}