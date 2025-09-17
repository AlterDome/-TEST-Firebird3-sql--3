CREATE OR ALTER DATABASE './1.fdb'
USER 'SYSDBA' PASSWORD 'masterkey'
PAGE_SIZE 16384
DEFAULT CHARACTER SET UNICODE_FSS;

------------------------------
--- isql-fb -input 1.sql  Запуск из файла 

CONNECT "./1.fdb" user 'SYSDBA' password 'masterkey';

-------------------------------
DROP DATABASE;


-----------------------------------
--commit;  --сохраняем запись базы
--------------------------------------
/*
CREATE VIEW VI (
    id INTEGER NOT NULL,
    sklad  VARCHAR(30),
    adres VARCHAR(50))
SELECT CAST(adres) FROM SCLAD WHERE (ID=1) GROUP_BY adres;
                                           -- группирует по адресам
*/
-----------------------------------------
