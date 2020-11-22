Use prjNoticias;

DELIMITER $$

DROP PROCEDURE IF EXISTS buscarCategorias$$
CREATE PROCEDURE buscarCategorias()
BEGIN
  SELECT * from categoria;
END$$

DROP PROCEDURE IF EXISTS buscarCategoria$$
CREATE PROCEDURE buscarCategoria(pCategoria int)
BEGIN
  SELECT nm_categoria FROM categoria
  WHERE cd_categoria = pCategoria;
END$$

DROP PROCEDURE IF EXISTS buscarNoticias$$
CREATE PROCEDURE buscarNoticias(pCategoria int)
BEGIN
   IF (pCategoria = -1) THEN
     SELECT * from noticia
     WHERE cd_situacao_noticia = 2;
   ELSE 
     SELECT * from noticia
     WHERE cd_categoria = pCategoria
     AND cd_situacao_noticia = 2;
   END IF;
END$$

DROP PROCEDURE IF EXISTS criarNoticia$$
CREATE PROCEDURE criarNoticia(pTitulo varchar(120), pLinhaFina varchar(250),
  pConteudo longtext, pCategoria int)
BEGIN
  DECLARE _cd int;

  SELECT count(*) INTO @_cd FROM noticia;

  INSERT INTO noticia values (@_cd, curdate(), curtime(), pTitulo, pLinhaFina, 
pConteudo, curdate(), curtime(), pCategoria, 2, 'julia_affonso@etecaf.com.br'); 

END$$

DELIMITER ;

SHOW PROCEDURE STATUS WHERE db = "prjNoticias";


