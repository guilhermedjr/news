window.onload = initPage;
function initPage() {
    Code = sessionStorage.getItem('Code');
    $.post("noticia.aspx",{C:Code},function(Ciocollata){
        var Noticer = document.querySelector("#Noticer");
        let Notice = Ciocollata.split('☺');
        Noticer.innerHTML =
        `
        <div class="col1de1">
				<img class="imgCol1de1" src="images/noticias/${Notice[0]}.jpg">
				<h1 class="titulo">${Notice[1]}</h1>
				<h2 class="linhaFina">${Notice[1]}</h2>
				
				${Notice[2]}
				
				<div class="clsAutor fl">
					<p><strong>Fábio Fabrini</strong></p>
					<p>24 Agosto 2020 | 05h00</p>
				</div>
        `

    });

}