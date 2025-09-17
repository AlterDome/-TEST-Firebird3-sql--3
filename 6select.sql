

------------------------------
--- isql-fb -input 1.sql  Запуск из файла 

CONNECT "./1.fdb" user 'SYSDBA' password 'masterkey';

-------------------------------
/*
CREATE TABLE adres ( 
id INT,        --- индекс
adrstart date,    --- дата внесения записи в БД 
adrend date,      --- дата окончания действия записи в БД
newadr date,      --- Дата нового адреса регистрации компании
oldadr date,      --- Дата окончания действия регистрации адреса компании
company VARCHAR(10), --- название компании
city VARCHAR(10)     --- название города адреса компании
);

*/
-- вывод на экран  
--Select * from adres;

SELECT id, city, company, adrstart, newadr FROM adres  WHERE 
adrstart = '01.01.2023' AND newadr = '01.01.2023';



-----------------------------------

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
