
-- Espotifai


-- categorias das musicas
insert into categoria_musica (cod_categoria, nome_categoria) VALUES (1, "Rock");
insert into categoria_musica (cod_categoria, nome_categoria) VALUES (2, "Pagode");
insert into categoria_musica (cod_categoria, nome_categoria) VALUES (3, "Forró");
insert into categoria_musica (cod_categoria, nome_categoria) VALUES (4, "Sertanejo");
insert into categoria_musica (cod_categoria, nome_categoria) VALUES (5, "Arrocha");
insert into categoria_musica (cod_categoria, nome_categoria) VALUES (6, "Rap");
insert into categoria_musica (cod_categoria, nome_categoria) VALUES (7, "Axé");

-- Artistas
insert into artista (nome_artista) VALUES ("Marília Mendonça");
insert into artista (nome_artista) VALUES ("Raul Seixas");
insert into artista (nome_artista) VALUES ("Hungria");
insert into artista (nome_artista) VALUES ("Tierry");
insert into artista (nome_artista) VALUES ("Mano Walter");
insert into artista (nome_artista) VALUES ("Japinha Conde");
insert into artista (nome_artista) VALUES ("Pitty");
insert into artista (nome_artista) VALUES ("Wesley Safadão");
insert into artista (nome_artista) VALUES ("Saulo Fernandes");

-- Clientes
insert into cliente (primeiro_nome_cliente, ultimo_nome_cliente, cpf_cliente, data_nascimento, email_cliente) VALUES ("Ana Gleide", "dos Anjos Pêpe", "12345678902", "1989-02-23", "ana.pepe@gmail.com");
insert into cliente (primeiro_nome_cliente, ultimo_nome_cliente, cpf_cliente, data_nascimento, email_cliente) VALUES ("Roberta", "de Jesus Santos", "12345678903", "1991-04-30", "roberta@gmail.com");
insert into cliente (primeiro_nome_cliente, ultimo_nome_cliente, cpf_cliente, data_nascimento, email_cliente) VALUES ("Ana Beatriz", "Pêpe dos Reis", "12345678904", "2001-09-10", "beatriz@gmail.com");
insert into cliente (primeiro_nome_cliente, ultimo_nome_cliente, cpf_cliente, data_nascimento, email_cliente) VALUES ("Maria Leticia", "Pêpe dos Reis", "12345678905", "2001-09-10", "mleticia@gmail.com");

-- musicas
insert into musica (titulo_musica, ano_lancamento, cod_categoria, cod_artista_autor) VALUES ("Troca de Calçada", 2020, 4, 1);
insert into musica (titulo_musica, ano_lancamento, cod_categoria, cod_artista_autor, cod_artista_associado) VALUES ("Hackearam-Me", 2020, 5, 4, 1);
insert into musica (titulo_musica, ano_lancamento, cod_categoria, cod_artista_autor) VALUES ("Matuto de Verdade", 2021, 5, 5);
insert into musica (titulo_musica, ano_lancamento, cod_categoria, cod_artista_autor) VALUES ("Lembranças", 2018, 6, 3);
insert into musica (titulo_musica, ano_lancamento, cod_categoria, cod_artista_autor, cod_artista_associado) VALUES ("Arranhãozinho", 2021, 4,6, 4);
insert into musica (titulo_musica, ano_lancamento, cod_categoria, cod_artista_autor) VALUES ("Na sua Estante", 2005, 1,7); 
insert into musica (titulo_musica, ano_lancamento, cod_categoria, cod_artista_autor) VALUES ("Tente Outra Vez", 1975, 1,2); 
insert into musica (titulo_musica, ano_lancamento, cod_categoria, cod_artista_autor) VALUES ("Ouro de Tolo", 1973, 1,2); 
insert into musica (titulo_musica, ano_lancamento, cod_categoria, cod_artista_autor) VALUES ("Edinalva", 2021, 3, 8); 
insert into musica (titulo_musica, ano_lancamento, cod_categoria, cod_artista_autor, cod_artista_associado) VALUES ("O Que Houve?", 2019, 4, 5, 1); 
insert into musica (titulo_musica, ano_lancamento, cod_categoria, cod_artista_autor) VALUES ("Faltando um Beijo", 2009, 7, 9); 
	
-- playlist
insert into playlist (titulo_playlist, cod_cliente_autor_playlist) VALUES ("Chorencia", 1);
insert into playlist (titulo_playlist, cod_cliente_autor_playlist) VALUES ("Das Antigas", 2);
insert into playlist (titulo_playlist, cod_cliente_autor_playlist) VALUES ("Só 20/21", 3);
insert into playlist (titulo_playlist, cod_cliente_autor_playlist) VALUES ("Junto e Misturado", 4);

insert into musica_playlist (cod_playlist, cod_musica) VALUES (1, 1);
insert into musica_playlist (cod_playlist, cod_musica) VALUES (1, 4);
insert into musica_playlist (cod_playlist, cod_musica) VALUES (1, 5);
insert into musica_playlist (cod_playlist, cod_musica) VALUES (1, 6);

insert into musica_playlist (cod_playlist, cod_musica) VALUES (2, 6);
insert into musica_playlist (cod_playlist, cod_musica) VALUES (2, 7);
insert into musica_playlist (cod_playlist, cod_musica) VALUES (2, 8);
insert into musica_playlist (cod_playlist, cod_musica) VALUES (2, 11); 

insert into musica_playlist (cod_playlist, cod_musica) VALUES (3, 9);
insert into musica_playlist (cod_playlist, cod_musica) VALUES (3, 1);
insert into musica_playlist (cod_playlist, cod_musica) VALUES (3, 2);
insert into musica_playlist (cod_playlist, cod_musica) VALUES (3, 3); 

insert into musica_playlist (cod_playlist, cod_musica) VALUES (4, 11);
insert into musica_playlist (cod_playlist, cod_musica) VALUES (4, 1);
insert into musica_playlist (cod_playlist, cod_musica) VALUES (4, 8);
insert into musica_playlist (cod_playlist, cod_musica) VALUES (4, 5); 


-- playlist seguidas
insert into playlist_seguidas (cod_cliente_seguidor, cod_playlist_seguida) VALUES (1, 2);
insert into playlist_seguidas (cod_cliente_seguidor, cod_playlist_seguida) VALUES (2, 3);
insert into playlist_seguidas (cod_cliente_seguidor, cod_playlist_seguida) VALUES (3, 1);
insert into playlist_seguidas (cod_cliente_seguidor, cod_playlist_seguida) VALUES (4, 2);
insert into playlist_seguidas (cod_cliente_seguidor, cod_playlist_seguida) VALUES (1, 3);
insert into playlist_seguidas (cod_cliente_seguidor, cod_playlist_seguida) VALUES (2, 4);
insert into playlist_seguidas (cod_cliente_seguidor, cod_playlist_seguida) VALUES (3, 2);




