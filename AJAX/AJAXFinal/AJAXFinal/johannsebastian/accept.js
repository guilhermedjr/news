window.onload = initPage;

function initPage(){
    let Confirm = "true";
    $.post("log.aspx",{c:Confirm},function(Ciocollata){
        let MySpace = document.querySelector("#Add");
        let Noticer = Ciocollata.split('☻');
        Noticer.pop();
        Noticer.forEach(element => {
            Separar = element.split('☺');
            MySpace.innerHTML += 
            `
            <h3>${Separar[1]}</h3>
            <p>${Separar[2]}</p>
            <button onclick="Took(${Separar[0]},1)">Aceitar</button>
            <button onclick="Took(${Separar[0]},0)">Recusar</button>
            `;

        });

    });

}

function Took(Code, Vein) {
    let Confirm = "false";
    $.post("log.aspx",{c:Confirm, Co:Code, Ve:Vein},function(Ciocollata){
        document.location.reload(true);

    });

}