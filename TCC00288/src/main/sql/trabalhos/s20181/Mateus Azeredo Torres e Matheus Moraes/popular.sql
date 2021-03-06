-- popular o banco de dados.


-- CREATE TABLE usuario (

-- usr_id int NOT NULL,
-- rg text NOT NULL,
-- nome character varying NOT NULL,
-- tel character varying, 
-- endereco character varying,
-- email character varying,
-- CONSTRAINT usr_pk PRIMARY KEY (usr_id)
-- );	

-- CREATE TABLE autor (

-- autor_id int NOT NULL,
-- nome character varying NOT NULL,
-- CONSTRAINT autor_pk PRIMARY KEY (autor_id)
-- );	

-- CREATE TABLE editora (

--  editora_id int NOT NULL,
--  nome character varying NOT NULL,
--  site character varying ,
--  endereco character varying,	
--  CONSTRAINT editora_pk PRIMARY KEY (editora_id)
--  );	


--  CREATE TABLE livro (

--  ISBN int NOT NULL,
--  titulo character varying NOT NULL,
--  autor int  NOT NULL,
--  editora int NOT null,
--  descricao character varying,	 
--  edicao character varying NOT NULL,	 
--  -- outras coisas area (na tabela area_livro) , avaliacoes (na tabela avaliacoes)
--  CONSTRAINT livro_pk PRIMARY KEY (ISBN),
--  CONSTRAINT autor_fk FOREIGN KEY(autor) REFERENCES autor(autor_id),
--  CONSTRAINT editora_fk FOREIGN KEY(editora) REFERENCES editora(editora_id)	 
--  );	

-- CREATE TABLE locais(
--  local_id int NOT NULL, 
--  nome character varying NOT NULL,
--  CONSTRAINT local_pk PRIMARY KEY(local_id)
-- );

-- CREATE DOMAIN estadoDom character varying  CHECK (VALUE IN ('disp','empres', 'manu'));
--  CREATE TABLE exemplar (

--  exm_id int NOT NULL,
--  ISBN int NOT NULL,  -- tem que de algum jeito saber qual livro esse exemplar ta associado
--  local_id int NOT NULL, -- local: pode ser um acervo ou emprestado...
--  estado estadoDom DEFAULT 'disp', 	 
--  CONSTRAINT exemplar_pk PRIMARY KEY (exm_id),
--  CONSTRAINT livro_fk FOREIGN KEY(ISBN) REFERENCES livro(ISBN),
--  CONSTRAINT local_fk FOREIGN KEY(local_id) REFERENCES locais(local_id)	
--  );	


-- CREATE TABLE area(
--  area_id int NOT NULL,
--  descricao  character varying NOT NULL,
--  CONSTRAINT area_pk PRIMARY KEY (area_id)	
 
-- );

-- CREATE TABLE area_livro(
--   ISBN int NOT NULL,
--   area_id int NOT NULL,
--   CONSTRAINT livro_fk FOREIGN KEY(ISBN) REFERENCES livro(ISBN),
--   CONSTRAINT area_fk FOREIGN KEY(area_id) REFERENCES area(area_id),
--   CONSTRAINT area_livro_pk PRIMARY KEY(ISBN,area_id)	

-- );


 CREATE TABLE emprestimo(
 	emp_id int NOT NULL,
 	usr_id int NOT NULL,
 	exm_id int NOT NULL,
 	data_inic timestamp not null,
 	data_exp timestamp not null,
 	data_dev timestamp default NULL,
	multa boolean default FALSE,
	data_paga timestamp default NULL, 
 	CONSTRAINT emprestimo_pk PRIMARY KEY(emp_id),
 	CONSTRAINT exemplar_fk FOREIGN KEY(exm_id) REFERENCES exemplar(exm_id),
 	CONSTRAINT usuario_fk FOREIGN KEY(usr_id) REFERENCES usuario(usr_id)


 );

--   CREATE TABLE multa(
--   	multa_id int NOT NULL,
--   	usr_id int NOT NULL,
--   	emissao timestamp not null,
-- 	datapago timestamp, 
--   	CONSTRAINT multa_pk PRIMARY KEY(multa_id),
--   	CONSTRAINT usuario_fk FOREIGN KEY(usr_id) REFERENCES usuario(usr_id)


--   );


-- CREATE TABLE reserva (
-- 	id_res int NOT NULL,
-- 	ISBN int NOT NULL,
--  	usr_id int NOT NULL,
-- 	data_r timestamp NOT NULL,
-- 	CONSTRAINT reserva_pk PRIMARY KEY(id_res),
-- 	CONSTRAINT livro_fk FOREIGN KEY(ISBN) REFERENCES livro(ISBN),
--  	CONSTRAINT usuario_fk FOREIGN KEY(usr_id) REFERENCES usuario(usr_id)


-- );

-- CREATE TABLE suspensoes (
-- 	usr_id int NOT NULL,
-- 	data_s timestamp NOT NULL,
-- 	dias int,
-- 	CONSTRAINT susp_pk PRIMARY KEY(usr_id),
--  	CONSTRAINT usuario_fk FOREIGN KEY(usr_id) REFERENCES usuario(usr_id)


-- );




