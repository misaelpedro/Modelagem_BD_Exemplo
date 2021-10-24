

-- Espotifai


-- Create Schema
--
DROP SCHEMA IF EXISTS Espotifai;


CREATE SCHEMA IF NOT EXISTS Espotifai DEFAULT CHARACTER SET utf8 ;
USE Espotifai ;



-- CATEGORIA_MUSICA
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS categoria_musica (
  cod_categoria SMALLINT NOT NULL AUTO_INCREMENT UNIQUE,
  nome_categoria VARCHAR(45) NOT NULL UNIQUE,
  PRIMARY KEY (cod_categoria)
) ENGINE = InnoDB;



-- ARTISTA
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS artista (
  cod_artista SMALLINT NOT NULL AUTO_INCREMENT UNIQUE,
  nome_artista VARCHAR(100) NOT NULL,
  PRIMARY KEY (cod_artista)
) ENGINE = InnoDB;



-- MUSICA
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS musica (
  cod_musica SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
  titulo_musica VARCHAR(80) NOT NULL,
  ano_lancamento INT NOT NULL,
  arquivo_musica BLOB,
  cod_categoria SMALLINT NOT NULL,
  cod_artista_autor SMALLINT NOT NULL,
  cod_artista_associado SMALLINT NULL,
  PRIMARY KEY (cod_musica),
  UNIQUE INDEX cod_musica_UNIQUE (cod_musica ASC) VISIBLE,
  INDEX fk_MUSICA_CATEGORIA_MUSICA_idx (cod_categoria ASC) VISIBLE,
  INDEX fk_MUSICA_ARTISTA1_idx (cod_artista_autor ASC) VISIBLE,
  INDEX fk_MUSICA_ARTISTA2_idx (cod_artista_associado ASC) VISIBLE,
  CONSTRAINT fk_MUSICA_CATEGORIA_MUSICA
    FOREIGN KEY (cod_categoria)
    REFERENCES categoria_musica (cod_categoria)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_MUSICA_ARTISTA1
    FOREIGN KEY (cod_artista_autor)
    REFERENCES artista (cod_artista)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_MUSICA_ARTISTA2
    FOREIGN KEY (cod_artista_associado)
    REFERENCES artista (cod_artista)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;



-- CLIENTE
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS cliente (
  cod_cliente SMALLINT NOT NULL AUTO_INCREMENT UNIQUE,
  cpf_cliente VARCHAR(11) NOT NULL UNIQUE,
  primeiro_nome_cliente VARCHAR(100) NOT NULL,
  ultimo_nome_cliente VARCHAR(200) NOT NULL,
  data_nascimento DATE NOT NULL,
  email_cliente VARCHAR(255) NOT NULL UNIQUE,
  ultima_atualizacao DATETIME NOT NULL DEFAULT(NOW()),
  PRIMARY KEY (cod_cliente)
) ENGINE = InnoDB;



-- PLAYLIST
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS playlist (
  cod_playlist SMALLINT NOT NULL AUTO_INCREMENT UNIQUE,
  titulo_playlist VARCHAR(45) NOT NULL,
  atualizacao_playlist DATETIME NOT NULL DEFAULT(NOW()),
  cod_cliente_autor_playlist SMALLINT NOT NULL,
  PRIMARY KEY (cod_playlist),
  INDEX fk_PLAYLIST_CLIENTE1_idx (cod_cliente_autor_playlist ASC) VISIBLE,
  CONSTRAINT fk_PLAYLIST_CLIENTE1
    FOREIGN KEY (cod_cliente_autor_playlist)
    REFERENCES cliente (cod_cliente)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;



-- MUSICA_PLAYLIST
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS musica_playlist (
  cod_musica SMALLINT UNSIGNED NOT NULL ,
  cod_playlist SMALLINT NOT NULL,
  PRIMARY KEY (cod_musica, cod_playlist),
  INDEX fk_MUSICA_has_PLAYLIST_PLAYLIST1_idx (cod_playlist ASC) VISIBLE,
  INDEX fk_MUSICA_has_PLAYLIST_MUSICA1_idx (cod_musica ASC) VISIBLE,
  CONSTRAINT fk_MUSICA_has_PLAYLIST_MUSICA1
    FOREIGN KEY (cod_musica)
    REFERENCES musica (cod_musica)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_MUSICA_has_PLAYLIST_PLAYLIST1
    FOREIGN KEY (cod_playlist)
    REFERENCES playlist (cod_playlist)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;



-- PLAYLIST_SEGUIDAS
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS playlist_seguidas (
  cod_cliente_seguidor SMALLINT NOT NULL,
  cod_playlist_seguida SMALLINT NOT NULL,
  PRIMARY KEY (cod_cliente_seguidor, cod_playlist_seguida),
  INDEX fk_CLIENTE_has_PLAYLIST_PLAYLIST1_idx (cod_playlist_seguida ASC) VISIBLE,
  INDEX fk_CLIENTE_has_PLAYLIST_CLIENTE1_idx (cod_cliente_seguidor ASC) VISIBLE,
  CONSTRAINT fk_CLIENTE_has_PLAYLIST_CLIENTE1
    FOREIGN KEY (cod_cliente_seguidor)
    REFERENCES cliente (cod_cliente)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_CLIENTE_has_PLAYLIST_PLAYLIST1
    FOREIGN KEY (cod_playlist_seguida)
    REFERENCES playlist (cod_playlist)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;



-- VERICANDO IDADE DO CLIENTE

ALTER TABLE cliente 
 ADD CONSTRAINT ck_idade_cliente
 CHECK (
	year(ultima_atualizacao) - year(data_nascimento) >=18
);



