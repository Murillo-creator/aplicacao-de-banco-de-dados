use DB_T05072C_MURILLO_FREITAS;
show TABLES;

-- criando usuario
CREATE USER 'Murillo.Freitas'@'%' IDENTIFIED BY '32450@Muri';

-- definindo as permissoes do usuario
GRANT ALL PRIVILEGES ON DB_T05072C_MURILLO_FREITAS.* TO 'Murillo.Freitas'@'%';

-- responsável por atualizar imediatamente os privilégios que foram alterados
FLUSH PRIVILEGES;

-- exibe as permissoes do usuario
SHOW GRANTS FOR 'Murillo.Freitas'@'%';