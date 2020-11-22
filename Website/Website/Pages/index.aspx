<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Website.Pages.index" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Portal ETECAF</title>
	<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="../css/style.css">
    <script type="text/javascript" src="../js/jquery-3.5.1.min.js"></script>
    <!--<script type="text/javascript" src="../js/GetCategories.js"></script>-->
</head>
<body>
  <form runat="server">
	<div class="barraAzul"></div>
	<main class="">
		<header>
			<a href="#"><img src="../images/logo.png"></a>
			<p class="subtituloLogo">Portal de Notícias da ETECAF - 24/08/2020</p>
		</header>
	</main>
	

	<nav>
		<div id="categoriesMenu" class="conteudoMenu">
		</div>
	</nav>

	<section id="principal">
        <div class="fl">
        <asp:Literal ID="noticias" runat="server">
		<!--<div ID="noticias" class="fl">-->
			<!--<div class="col1de1">
				<a href="noticia.html" class="linkPadrao">
				<img class="imgCol1de1" src="images/noticias/1.jpg">
				<h1 class="titulo">Alunos não poderão usar calça de pijama nem se sentar na cama durante aulas on-line em Springfield, nos EUA</h1>
				<h2 class="linhaFina">Autoridades afirmam que estudantes devem se comportar como se estivessem na escola. Medida recebeu críticas de pais dos alunos.</h2>
				</a>
			</div>
			<div class="col1de2">
				<a href="noticia.html?n=2" class="linkPadrao">
				<img class="imgCol1de2" src="images/noticias/2.jpg">
				<h1 class="titulo">Por adequação à nova realidade de ensino, Unicamp prevê priorizar conteúdos 'mais básicos' na 1ª fase do vestibular</h1>
				<h2 class="linhaFina">Mudança visa reduzir impactos das dificuldades causadas pelo ensino remoto durante a pandemia da Covid-19. Medida não quer dizer que a prova será mais fácil, diz diretor.</h2>
				</a>
			</div>
			<div class="col1de2">
				<a href="noticia.html?n=3" class="linkPadrao">
				<img class="imgCol1de2" src="images/noticias/3.jpg">
				<h1 class="titulo">Defesa diz que Temer pedirá a Bretas autorização para participar de missão oficial ao Líbano</h1>
				<h2 class="linhaFina">Ex-presidente foi convidado por Jair Bolsonaro para liderar uma missão de ajuda do governo brasileiro em Beirute. Réu na Operação Descontaminação, Temer não poderia sair do país, mas já fez duas viagens ao exterior com autorização do TRF 2.</h2>
				</a>
			</div>
			<div class="col1de3">
				<a href="noticia.html?n=4" class="linkPadrao">
				<img class="imgCol1de3" src="images/noticias/4.jpg">
				<h1 class="titulo">'Precisamos deixar de ser os parasitas em relação à Amazônia', diz Fachin</h1>
				<h2 class="linhaFina">Ministro do STF também afirmou em videoconferência que 'não basta dizer que outros povos não fizeram seu dever'.</h2>
				</a>
			</div>
			<div class="col1de3">
				<a href="noticia.html?n=5" class="linkPadrao">
				<img class="imgCol1de3" src="images/noticias/5.jpg">
				<h1 class="titulo">Brasileiros estão consumindo mais frutas, hortaliças e feijão na pandemia, aponta estudo</h1>
				<h2 class="linhaFina">Foi registrado um aumento de 44,6% de alimentos in natura no dia a dia dos voluntários da pesquisa.</h2>
				</a>
			</div>
			<div class="col1de3">
				<a href="noticia.html?n=6" class="linkPadrao">
				<img class="imgCol1de3" src="images/noticias/6.jpg">
				<h1 class="titulo">Rede de hotéis Marriott reporta prejuízo acima do esperado com pandemia atingindo reservas</h1>
				<h2 class="linhaFina">Crise do coronavírus prejudicou as viagens globais, levando a uma queda nas reservas de quartos.</h2>
				</a>
			</div>
			<div class="col1de3">
				<a href="noticia.html?n=7" class="linkPadrao">
				<img class="imgCol1de2" src="images/noticias/7.jpg">
				<h1 class="titulo">Intel investiga vazamento de 20 gigabytes de documentos e códigos da companhia</h1>
				<h2 class="linhaFina">Responsável afirma que obteve arquivos em servidor inseguro, mas Intel diz que documentos podem ter sido obtidos por usuário autorizado a acessar portal de parceiros.</h2>
				</a>
			</div>
			<div class="col1de3">
				<a href="noticia.html?n=8" class="linkPadrao">
				<img class="imgCol1de2" src="images/noticias/8.jpg">
				<h1 class="titulo">Sony diz que vai começar a testar carro elétrico nas ruas do Japão até março do ano que vem</h1>
				<h2 class="linhaFina">Empresa levou Vision-S da Áustria para Tóquio para aprimirar algumas tecnologias. Sedã foi apresentado na última CES, em janeiro.</h2>
				</a>
			</div>
			<div class="col1de3">
				<a href="noticia.html?n=9" class="linkPadrao">
				<img class="imgCol1de2" src="images/noticias/9.jpg">
				<h1 class="titulo">Simon Cowell passa por cirurgia após sofrer queda de bicicleta elétrica e fraturar a coluna</h1>
				<h2 class="linhaFina">Produtor deixou mensagem nas redes sociais falando sobre incidente e agradecendo equipe médica.</h2>
				</a>
			</div>-->
			
			<div class="cls"></div>
		</asp:Literal>
        </div>
		<div class="cls"></div>
	</section>
	<div class="barraAzul"></div>
  </form>
</body>
</html>
