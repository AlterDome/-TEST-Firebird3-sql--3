#
#  
#  Author Rybochkin Aleksei
#  September 2025
#
#  



# base
###  1 
function aa() {
echo " "
echo " 1 - Установить firebird и sql в Debian 12 "

apt-get check
apt-get install firebird3.0-server-core \
firebird3.0-common \
firebird-dev \
firebird3.0-common-doc \
firebird3.0-server \
firebird3.0-utils \
firebird3.0-examples \
firebird3.0-doc \
sqlcl-package \
sqlite3-doc \
sqlreduce \
sqlformat \
sqldeveloper-package \
sqlfluff \
sqlmap \
sqlline \
sqlobject-admin \
sqlcipher \
sqlite3-tools \
sqlgrey \
sqlite-utils \
sqlitebrowser \
sqlite3-pcre \
sqlsmith \
sqlite3 \
sqlfluff-doc \
sqlite-modern-cpp-dev \
sql-ledger \
sql-migrate
apt-get check



}




###   2 - Create Database ...   
function ba() { 
echo "  "
echo " 2 - Create Database ...   "
echo "      Введите название файла     "

#read filename

#isql-fb CREATE DATABASE './1.fdb' USER 'SYSDBA' PASSWORD 'masterkey' PAGE_SIZE 16384 DEFAULT CHARACTER SET UNICODE_FSS;

isql-fb -input 1.sql

#$filename

}

###   3 - 3select.sql
function ca() { 
echo " 3 - isql-fb -input      3select.sql "
echo "   Подключение к существующей БД "

isql-fb -input 3select.sql

echo " "

}


### 4 - Select into ... 
function da() { 
echo " 4 - isql-fb -input      4select.sql "
echo "   Подключение к существующей БД "

isql-fb -input 4select.sql

echo " "
}


### 5 - isql-fb 
function ea() { 
echo " 5 - isql-fb -input      5select.sql "
echo "   Подключение к существующей БД "

isql-fb -input 5select.sql

echo " "
}

### 6 - isql-fb
function fa() { 
echo " 5 - isql-fb -input      6select.sql "
echo "   Подключение к существующей БД "

isql-fb -input 6select.sql

echo " "
}

### 7 - isql-fb    Connect   и   Select
function ga() { 
echo " 7 -  Вариант 2  Select ...   /  7select.sql  "
echo "   Подключение к существующей БД "

isql-fb -input  7select.sql

echo " "
}


### 8 - isql-fb   DROP Database  ./1.fbd
function ha() { 
echo " 8 - isql-fb   DROP Database  ./1.fbd     8DROP.sql "
echo ""

isql-fb -input 8DROP.sql


#$filename
echo " "
}

### 9 - Output in file  isql-fb  
function ia() { 
echo " 9 - Output in file  isql-fb    9output.sql  "
echo ""
#isql -o output.log
isql-fb -input 9output.sql -o output.log


#$filename
echo " "
}



##########################
### - 0  ВЫХОД ИЗ СКРИПТА
function zz() { 
echo " ВЫХОД ИЗ СКРИПТА "
echo " 5 Exit ..."
exit 0;
}
####################################################################
function mainn() {
echo " 1 - Установить firebird и sql в Debian 12 "
echo ""

echo " 2 - Create Database ...    1.sql     "
echo ""

echo " 3 - Вариант 1  Select ...   /   3select.sql  "
echo ""


echo " 4 - Вариант 2  Select ...   /  4select.sql "
echo ""

echo " 5 - Вариант 3  Select ...   /  5select.sql  "
echo ""

echo " 6 - Вариант 4  Select ...   /  6select.sql  "
echo ""

echo " 7 - Вариант 5  Select ...   /  7select.sql  "
echo ""


echo " 8 - DROP  Database  isql-fb  ./1.fbd   8DROP.sql"
echo ""

echo " 9 - Output in file  isql-fb   9output.sql  "
echo ""



echo " 0 - Exit  "
echo ""

echo " Введите значение ... "

main
}
######################################
function main() {

read number

case $number in

1) aa
;;
2) ba
;;
3) ca
;;
4) da
;;
5) ea
;;
6) fa
;;
7) ga
;;
8) ha # Drop
;;
9) ia # Output
;;


0) zz
;;


*) mainn
;;
esac
}
##########################
#! /bin/bash
### ГЛАВНОЕ МЕНЮ 
echo " "
echo "       **********         "
echo "  Работа с firebird3 sql в Debian 13   # 2 "
mainn
