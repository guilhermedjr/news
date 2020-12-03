Drop Schema if exists prjNoticias;
Create Schema prjNoticias;
Use prjNoticias;

Create Table tipo_usuario
(
	cd_tipo_usuario int, 
    nm_tipo_usuario varchar(45),
    constraint pk_tipo_usuario primary key (cd_tipo_usuario)
);

Create Table categoria
(
   cd_categoria int,
   nm_categoria varchar(45),
   constraint pk_categoria primary key (cd_categoria)
);

Create Table situacao_noticia
(
	cd_situacao_noticia int,
    nm_situacao_noticia varchar(45),
	constraint pk_situacao_noticia primary key (cd_situacao_noticia)
);

Create Table usuario
(
	nm_login varchar(150),
    nm_usuario varchar(150),
    nm_senha varchar(64),
    cd_tipo_usuario int,
    constraint pk_usuario primary key (nm_login),
    constraint fk_usuario_tipo_usuario foreign key (cd_tipo_usuario) 
       references tipo_usuario(cd_tipo_usuario)
);

Create Table noticia
(
    cd_noticia int,
    dt_noticia date,
    hr_noticia time,
    nm_titulo varchar(120),
    nm_linha_fina varchar(250),
    ds_noticia longtext,
	dt_publicacao date,
    hr_publicacao time,
    cd_categoria int,
    cd_situacao_noticia int, 
    nm_login varchar(150),
    constraint pk_noticia primary key (cd_noticia),
    constraint fk_noticia_categoria foreign key (cd_categoria)
       references categoria(cd_categoria),
    constraint fk_noticia_situacao_noticia foreign key (cd_situacao_noticia)
       references situacao_noticia(cd_situacao_noticia),
    constraint fk_noticia_usuario foreign key (nm_login)
       references usuario(nm_login)  
);

/* TIPOS DE USUARIOS */
Insert into tipo_usuario values (1,'Administrador');
Insert into tipo_usuario values (2, 'Autor');

/* CATEGORIAS */
Insert into categoria values (1,'Política');
Insert into categoria values (2,'Economia');
Insert into categoria values (3,'Internacional');
Insert into categoria values (4,'Educação');
Insert into categoria values (5,'Tecnologia');
Insert into categoria values (6,'Cultura');

/* SITUACAO NOTICIA */
Insert into situacao_noticia values (1,'Em análise');
Insert into situacao_noticia values (2,'Aprovada');
Insert into situacao_noticia values (3,'Recusada');

/* USUARIOS */
Insert into usuario values ('admin@etecaf.com.br','Administrador',md5('123'),1);
Insert into usuario values ('andre@etecaf.com.br','Andre Reis',md5('123'),1);
Insert into usuario values ('fabiana_cambricoli@etecaf.com.br','Fabiana Cambricoli',md5('123'),2);
Insert into usuario values ('marco_antonio_carvalho@etecaf.com.br', 'Marco Antônio Carvalho',md5('123'),2);
Insert into usuario values ('julia_affonso@etecaf.com.br', 'Julia Affonso',md5('123'),2);
Insert into usuario values ('marcelo_osakabe@etecaf.com.br', 'Marcelo Osakabe',md5('123'),2);
Insert into usuario values ('fabio_fabrini@etecaf.com.br', 'Fabio Fabrini',md5('123'),2);
Insert into usuario values ('fausto_macedo@etecaf.com.br', 'Fausto Macedo',md5('123'),2);
Insert into usuario values ('marcio_dolzan@etecaf.com.br', 'Marcio Dolzan',md5('123'),2);
Insert into usuario values ('fabio_serapiao@etecaf.com.br','Fabio Serapião',md5('123'),2);
Insert into usuario values ('renee_pereira@etecaf.com.br', 'Renée Pereira',md5('123'),2);


/* NOTICIA 01 */
Insert into noticia values (1,'2020-08-10','14:00:00','Alunos não poderão usar calça de pijama nem se sentar na cama durante aulas on-line em Springfield, nos EUA','Autoridades afirmam que estudantes devem se comportar como se estivessem na escola. Medida recebeu críticas de pais dos alunos.','Os alunos de escolas públicas de Springfield, capital de Illinois (EUA), não poderão usar calças de pijama, óculos de sol, bandanas ou chinelos durante as aulas on-line. Também serão proibidos de se sentar na cama para estudar.','2020-08-10','14:02:00',3,2,'fabiana_cambricoli@etecaf.com.br');
/* NOTICIA 02 */
Insert into noticia values (2,'2020-08-10','14:30:00','Por adequação à nova realidade de ensino, Unicamp prevê priorizar conteúdos mais básicos na 1ª fase do vestibular','Mudança visa reduzir impactos das dificuldades causadas pelo ensino remoto durante a pandemia da Covid-19. Medida não quer dizer que a prova será mais fácil, diz diretor.','Em adequação à nova realidade do ensino do Brasil provocada pela pandemia do novo coronavírus, a Unicamp decidiu que vai priorizar a aplicação de conceitos ""mais básicos"" na primeira fase do vestibular, para não prejudicar alunos que tiveram dificuldades nos estudos de maneira remota. A comissão organizadora do processo seletivo da instituição de Campinas (SP) já havia informado a redução de questões de 90 para 72 e a diminuição na quantidade de obras literárias obrigatórias na tentativa de evitar vantagens entre os candidatos.','2020-08-10','14:32:00',4,2,'marcelo_osakabe@etecaf.com.br');
/* NOTICIA 03 */
Insert into noticia values (3,'2020-08-10','14:42:00','Defesa diz que Temer pedirá a Bretas autorização para participar de missão oficial ao Líbano','Ex-presidente foi convidado por Jair Bolsonaro para liderar uma missão de ajuda do governo brasileiro em Beirute. Réu na Operação Descontaminação, Temer não poderia sair do país, mas já fez duas viagens ao exterior com autorização do TRF 2.','A defesa do ex-presidente Michel Temer informou que já tem pronta uma petição que será apresentada ao Juízo da 7ª Vara Federal Criminal do Rio de Janeiro, cujo titular é o juiz Marcelo Bretas, com pedido de autorização para que ele possa viajar ao Líbano, conforme convite do presidente Jair Bolsonaro.','2020-08-10','14:44:00',1,2,'fausto_macedo@etecaf.com.br');
/* NOTICIA 04 */
Insert into noticia values (4,'2020-08-10','13:35:00','"Precisamos deixar de ser os parasitas em relação à Amazônia", diz Fachin','Ministro do STF também afirmou em videoconferência que "não basta dizer que outros povos não fizeram seu dever de casa".','O ministro Edson Fachin, do Supremo Tribunal Federal (STF), afirmou nesta segunda-feira (10) que o Brasil pode ser "maior do que é" sem "agredir as florestas" nem "dizimar os povos nativos". Fachin também acrescentou: "Nós precisamos de deixar de ser os parasitas em relação à Amazônia".','2020-08-10','13:37:00',1,2,'marcio_dolzan@etecaf.com.br');
/* NOTICIA 05 */
Insert into noticia values (5,'2020-08-10','13:42:00','Brasileiros estão consumindo mais frutas, hortaliças e feijão na pandemia, aponta estudo','Foi registrado um aumento de 44,6% de alimentos in natura no dia a dia dos voluntários da pesquisa.','Os brasileiros estão comendo mais alimentos in natura durante a pandemia da Covid-19. É o que diz o Núcleo de Pesquisas Epidemiológicas em Nutrição e Saúde da Universidade de São Paulo (USP), que iniciou em janeiro de 2020 um dos maiores estudos em alimentação e saúde do país, o Estudo NutriNet Brasil.','2020-08-10','15:00:00',2,2,'julia_affonso@etecaf.com.br');
/* NOTICIA 06 */
Insert into noticia values (6,'2020-08-09','11:45:00','Rede de hotéis Marriott reporta prejuízo acima do esperado com pandemia atingindo reservas','Crise do coronavírus prejudicou as viagens globais, levando a uma queda nas reservas de quartos.','A operadora de hotéis Marriott International divulgou um prejuízo trimestral maior do que o esperado nesta segunda-feira (10), com a crise do coronavírus prejudicando as viagens globais e levando a uma queda nas reservas de quartos.','2020-08-09','11:47:00',2,2,'julia_affonso@etecaf.com.br');
/* NOTICIA 07 */
Insert into noticia values (7,'2020-08-10','13:44:00','Intel investiga vazamento de 20 gigabytes de documentos e códigos da companhia','Responsável afirma que obteve arquivos em servidor inseguro, mas Intel diz que documentos podem ter sido obtidos por usuário autorizado a acessar portal de parceiros.','<p>A fabricante de processadores Intel está investigando o vazamento de um acervo de documentos sigilosos da empresa que foi distribuído na internet.</p><p>O arquivo faz referência a diversos produtos e tecnologias da Intel, incluindo processadores, chips de rede e mecanismos de segurança.</p>','2020-08-10','13:46:00',5,2,'fabiana_cambricoli@etecaf.com.br');
/* NOTICIA 08 */
Insert into noticia values (8,'2020-08-10','08:00:00','Sony diz que vai começar a testar carro elétrico nas ruas do Japão até março do ano que vem','Empresa levou Vision-S da Áustria para Tóquio para aprimirar algumas tecnologias. Sedã foi apresentado na última CES, em janeiro.','A Sony deu mais um passo na direção de ter seu próprio carro. Depois de apresentar o Vision-S, um conceito de veículo elétrico na última edição da CES, em janeiro, a empresa de eletrônicos resolveu levar o protótipo para o Japão para aprimorar algumas tecnologias.','2020-08-10','08:02:00',5,2,'julia_affonso@etecaf.com.br');
/* NOTICIA 09 */
Insert into noticia values (9,'2020-08-10','09:33:00','Simon Cowell passa por cirurgia após sofrer queda de bicicleta elétrica e fraturar a coluna','Produtor deixou mensagem nas redes sociais falando sobre incidente e agradecendo equipe médica.','Simon Cowell, produtor e jurado do reality ""The X Factor"", precisou passar por uma cirurgia após sofrer uma queda de bicicleta elétrica. Cowell, de 60 anos, foi levado ao hospital, no sábado (8), logo após o acidente em sua casa, em Malibu. O produtor testava o novo veículo.',null,null,6,1,'fabiana_cambricoli@etecaf.com.br');
/* NOTICIA 10 */
Insert into noticia values (10,'2020-11-13','10:33:00','Joe Biden é eleito presidente dos EUA após vitória na Pensilvânia','Democrata conquista mais de 270 delegados no colégio eleitoral, segundo projeções de institutos e meios de comunicação. Trump não reconhece derrota e diz que recorrerá à Justiça.','<p>Joe Biden foi eleito neste sábado (7) o 46º presidente dos Estados Unidos. A vitória foi anunciada após projeções de institutos e meios de comunicação indicarem a vitória do democrata na Pensilvânia.</p><p>Com isso, Biden ultrapassou os 270 delegados no colégio eleitoral. O presidente Donald Trump, derrotado, não reconheceu o resultado e disse que vai recorrer à Justiça.</p><p>Sem apresentar provas, Trump reclama de uma suposta fraude na apuração de alguns estados em que perdeu. Até agora, nenhuma autoridade reportou qualquer irregularidade na contagem dos votos.</p><p>Biden primeiro se manifestou em uma rede social e divulgou um comunicado no qual agradeceu aos eleitores e disse que será presidente de todos os americanos.</p>',null,null,1,1,'julia_affonso@etecaf.com.br');
/* NOTICIA 11 */
Insert into noticia values (11,'2020-11-13','11:33:00','Casa na Rússia parece cenário de Teletubbies','Casa na Rússia parece cenário de Teletubbies','É quase impossível transitar por esta casa em Moscou, na Rússia, e não se lembrar de alguma cena de Teletubbies, clássico programa infantil que fez sucesso nos anos 1990. Assinada pelo escritório Niko Archietct, a propriedade foi construída sob colinas artificiais que em muito se parecem com os cenários da Teletubbilândia.',null,null,6,2,'fabiana_cambricoli@etecaf.com.br');
/* NOTICIA 12 */
Insert into noticia values (12,'2020-11-21','15:24:00','Cabo Daciolo profetizou o coronavírus ainda em 2018?','Cabo Daciolo profetizou o coronavírus ainda em 2018?','O ex-candidato à presidência do Brasil, Cabo Daciolo, profetizou ainda em 2018 toda a crise mundial que estamos enfrentando agora em 2020? Graças ao seu amplo conhecimento sobre a Nova Ordem Mundial e aos Caixões da FEMA, Daciolo foi capaz de fazer uma leitura precisa do panorama atual.',null,null,2,2,'fabiana_cambricoli@etecaf.com.br');