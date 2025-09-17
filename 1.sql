CREATE DATABASE './1.fdb'
USER 'SYSDBA' PASSWORD 'masterkey'
PAGE_SIZE 16384
DEFAULT CHARACTER SET UNICODE_FSS;

------------------------------
--- isql-fb -input 1.sql  Запуск из файла 

CONNECT "./1.fdb" user 'SYSDBA' password 'masterkey';

-------------------------------

CREATE TABLE adres ( 
id INT,        --- индекс
adrstart date,    --- дата внесения записи в БД 
adrend date,      --- дата окончания действия записи в БД
newadr date,      --- Дата нового адреса регистрации компании
oldadr date,      --- Дата окончания действия регистрации адреса компании
company VARCHAR(10), --- название компании
city VARCHAR(10)     --- название города адреса компании
);



--------------------------------*******************************
--------------------------------
INSERT INTO adres (id,        --- индекс
adrstart,    --- дата внесения записи в БД 
adrend,      --- дата окончания действия записи в БД
newadr,      --- Дата нового адреса регистрации компании
oldadr,      --- Дата окончания действия регистрации адреса компании
company, --- название компании
city     --- название города адреса компании
) 
VALUES (
1,               --- индекс
'2020-10-10',    --- дата внесения записи в БД 
'01.01.2023',      --- дата окончания действия записи в БД

'02.01.2020',      --- Дата нового адреса регистрации компании
'01.01.2023',      --- Дата окончания действия регистрации адреса компании

'Romashka',      --- название компании
'Moscow'         --- название города адреса компании
);
   

--------------------------------
INSERT INTO adres (id, adrstart, adrend,   newadr, oldadr,   company, city) VALUES
(2, '01.01.2020', '01.01.2023',    '01.01.2020', '01.01.2023',   'Romashka', 'Moscow' );
   
--------------------------------
INSERT INTO adres (id, adrstart, adrend,    newadr, oldadr,    company, city) VALUES
(3, '01.01.2020', '01.01.2023',    '01.01.2020', '01.01.2023',    'Kasha', 'Piter' );


--------------------------------***************************
INSERT INTO adres (id,  adrstart,  adrend,   newadr, oldadr,   company, city) VALUES
(54, '01.01.2023', '01.01.2020',     '01.01.2023', '01.01.2024',    'Romashka', 'Moscow' );

--------------------------------
INSERT INTO adres (id, adrstart, adrend,   newadr, oldadr,   company, city) VALUES
(54, '01.01.2020', '01.01.2020',    '01.01.2023', '01.01.2025',    'Romashka', 'Moscow' );

--------------------------------
INSERT INTO adres (id, adrstart, adrend,   newadr, oldadr,   company, city) VALUES
(54, '01.01.2000', '01.01.2020',    '01.01.2023', '01.01.2025',    'Romashkaan', 'Moscow' );

--------------------------------***************************


INSERT INTO adres (id, adrstart, adrend,    newadr, oldadr,    company, city) VALUES
(171, '01.01.2020', '01.01.2020',    '01.01.2023', '01.01.2020',    'Romashka', 'Sochi' );

--------------------------------
INSERT INTO adres (id, adrstart, adrend,   newadr, oldadr,   company, city) VALUES
(172, '01.01.2022', '10.01.2023',    '01.01.2023', '10.05.2025',    'Tv', 'Ekaterinburg' );

--------------------------------
INSERT INTO adres (id, adrstart, adrend,    newadr, oldadr,    company, city) VALUES
(173, '01.01.2017', '01.01.2021',    '20.12.2016', '18.12.02020',    'Player', 'Novgorod' );

--------------------------------
INSERT INTO adres (id, adrstart, adrend,    newadr, oldadr,    company, city) VALUES
(174, '01.01.2011', '01.01.2013',     '10.11.2010', '16.12.2012',    'Internet', 'Kaliningrad' );

 
   
--------------------------------*******************************
--------------------------------  
   
SUSPEND;  -- Ждем завершения обработки.
---------------------------------

-- вывод на экран
Select * from adres;



-----------------------------------
commit;  --сохраняем запись базы
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
