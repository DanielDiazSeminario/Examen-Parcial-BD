create table Cliente01 (
idcliente  number primary key,
nombre  varchar2(50),
estado  varchar2(1),
apellido    varchar2(50),
dni         number,
telefono    number,
direccion  varchar2(50),
sexo    varchar2(50),
codigo_cliente  NUMBER
); 
-----------Creamos secuencia Cliente
CREATE SEQUENCE SQ_CLIENTE01
START WITH 1
INCREMENT BY 1 
MINVALUE 1
NOCYCLE;
---------PROBAMOS LA SECUENCIA
SELECT SQ_CLIENTE01.NEXTVAL
FROM DUAL;
-----------insertamos registros
INSERT INTO Cliente01 Values (
SQ_CLIENTE01.NEXTVAL,
'Daniel',
'A',
'Diaz',
66852145,
253546485,
'Sector 2 grupo 10 manzana k lote 2',
'Masculino',
1
);
INSERT INTO Cliente01 Values (
SQ_CLIENTE01.NEXTVAL,
'Carlos',
'A',
'Torres',
85421587,
915845250,
'Sector 2 grupo 5 manzana k lote 3',
'Masculino',
2
);
INSERT INTO Cliente01 Values (
SQ_CLIENTE01.NEXTVAL,
'Jhon',
'A',
'Puma ',
25214174,
965842152,
'Sector 1 grupo 22 manzana k lote 2',
'Masculino',
3
);
INSERT INTO Cliente01 Values (
SQ_CLIENTE01.NEXTVAL,
'Carlos',
'A',
'Gustavo ',
69582312,
936952452,
'Sector 3 grupo 14 manzana f lote 7',
'Masculino',
4
);
INSERT INTO Cliente01 Values (
SQ_CLIENTE01.NEXTVAL,
'Naomi',
'A',
'Cordova',
12584251,
949854755,
'Sector 1 grupo 22a manzana e lote 20',
'Femenino',
5
);
INSERT INTO Cliente01 Values (
SQ_CLIENTE01.NEXTVAL,
'Gian Luca',
'A',
'Lapa Dula',
61524521,
912520245,
'Sector 4 grupo 20 manzana F lote 9',
'Masculino',
6
);
COMMIT;
SELECT *
FROM Cliente01;
create table Tipo_Cliente01(
idCodigo_cliente number primary key,
nombre varchar2(50),
estado  varchar2(1)
); 
-------------CREAMOS LE SECUENCIA TIPO DE CLIENTE
CREATE SEQUENCE SQ_TIPO_CLIENTE01
START WITH 1
INCREMENT BY 1 
MINVALUE 1
NOCYCLE;
---------PROBAMOS LA SECUENCIA
SELECT SQ_TIPO_CLIENTE01.NEXTVAL
FROM DUAL;
------------Insertamos los registros
INSERT INTO Tipo_Cliente01 Values (
SQ_TIPO_CLIENTE01.NEXTVAL,
'Siempre viene',
'A'
);
INSERT INTO Tipo_Cliente01 Values (
SQ_TIPO_CLIENTE01.NEXTVAL,
'mayormente viene',
'A'
);
INSERT INTO Tipo_Cliente01 Values (
SQ_TIPO_CLIENTE01.NEXTVAL,
'a veces viene',
'A'
);
INSERT INTO Tipo_Cliente01 Values (
SQ_TIPO_CLIENTE01.NEXTVAL,
'pocas veces viene',
'A'
);
INSERT INTO Tipo_Cliente01 Values (
SQ_TIPO_CLIENTE01.NEXTVAL,
'casi nunca viene',
'A'
);
INSERT INTO Tipo_Cliente01 Values (
SQ_TIPO_CLIENTE01.NEXTVAL,
'Siempre viene',
'A'
);
COMMIT;
SELECT *
FROM Tipo_Cliente01;
-----------
CREATE table venta3 (
idventa number primary key,
total_venta number,
codigo_empleado number,
numero_cliente  number,
estado  varchar2(1)
);
-----------CREAMOS LA SECUENCIA VENTA
CREATE SEQUENCE SQ_VENTA03
START WITH 1
INCREMENT BY 1 
MINVALUE 1
NOCYCLE;
---------PROBAMOS LA SECUENCIA
SELECT SQ_VENTA03.NEXTVAL
FROM DUAL;
-----------Insertamos registros
INSERT INTO venta3 VALUES (
SQ_VENTA03.NEXTVAL,
4,
1,
1,
'A'
);
INSERT INTO venta3 VALUES (
SQ_VENTA03.NEXTVAL,
3,
2,
2,
'A'
);
INSERT INTO venta3 VALUES (
SQ_VENTA03.NEXTVAL,
5,
3,
3,
'A'
);
INSERT INTO venta3 VALUES (
SQ_VENTA03.NEXTVAL,
1,
4,
4,
'A'
);
INSERT INTO venta2 VALUES (
SQ_VENTA03.NEXTVAL,
8,
5,
5,
'A'
);
INSERT INTO venta3 VALUES (
SQ_VENTA03.NEXTVAL,
9,
6,
6,
'A'
);
COMMIT;
SELECT *
FROM venta3;

------
create table detalle_venta01(
cantidad_venta  number,
importe_venta   number,
numero_venta    number,
codigo_comida   number,
estado  varchar2(1)
);
----------CREAMOS LA SECUENCIA DETALLE DE VENTA
CREATE SEQUENCE SQ_DETALLE_VENTA01
START WITH 1
INCREMENT BY 1 
MINVALUE 1
NOCYCLE;
---------PROBAMOS LA SECUENCIA
SELECT SQ_DETALLE_VENTA01.NEXTVAL
FROM DUAL;
--------CREAMOS LA SECUENCIA--
INSERT INTO detalle_venta01 VALUES (
SQ_DETALLE_VENTA01.NEXTVAL,
6,
14,
1,
1,
'A'
);
INSERT INTO detalle_venta01 VALUES (
SQ_DETALLE_VENTA01.NEXTVAL,
8,
16,
2,
2,
'A'
);
INSERT INTO detalle_venta01 VALUES (
SQ_DETALLE_VENTA01.NEXTVAL,
4,
10,
3,
3,
'A'
);
INSERT INTO detalle_venta01 VALUES (
SQ_DETALLE_VENTA01.NEXTVAL,
15,
20,
3,
3,
'A'
);
INSERT INTO detalle_venta01 VALUES (
SQ_DETALLE_VENTA01.NEXTVAL,
3,
2,
4,
4,
'A'
);
INSERT INTO detalle_venta01 VALUES (
SQ_DETALLE_VENTA01.NEXTVAL,
18,
20,
5,
5,
'A'
);
INSERT INTO detalle_venta01 VALUES (
SQ_DETALLE_VENTA01.NEXTVAL,
9,
10,
6,
6,
'A'
);
COMMIT;
SELECT *
FROM detalle_venta01;
create table Empleado01   (
idempleado  number primary key,
nombre  varchar2(50),
apellido    varchar2(50),
dni         number,
telefono    number,
sexo    varchar2(50),
direccion varchar2(50),
clave       number,
estado  varchar2(1),
codigo_empleado  NUMBER
);
-----------CREAMOS LA SECUENCIA EMPLEADO
CREATE SEQUENCE SQ_EMPLEADO01
START WITH 1
INCREMENT BY 1 
MINVALUE 1
NOCYCLE;
---------PROBAMOS LA SECUENCIA
SELECT SQ_EMPLEADO01.NEXTVAL
FROM DUAL;
-----------Insertamos Registros
INSERT INTO Empleado01 VALUES (
SQ_EMPLEADO01.NEXTVAL,
'JORGE',
'ZACARIAS',
1521452,
12545674,
'MASCULINO',
'SECTOR 3 GRUPO14 MANZANA H LOTE 8',
1234,
'A',
1
);
INSERT INTO Empleado01 VALUES (
SQ_EMPLEADO01.NEXTVAL,
'JASON',
'HERM',
5215212,
94814544544,
'MASCULINO',
'SECTOR 4 GRUPO 4 MANZANA P LOTE 18',
1235,
'A',
2
);
INSERT INTO Empleado01 VALUES (
SQ_EMPLEADO01.NEXTVAL,
'ZOILA',
'VACA',
32564215,
914521548,
'FEMENINO',
'SECTOR 4 GRUPO 15 MANZANA A LOTE 15',
1236,
'A',
3
);
INSERT INTO Empleado01 VALUES (
SQ_EMPLEADO01.NEXTVAL,
'MARIA',
'BRISA',
52451542,
988895985,
'FEMENINO',
'SECTOR 4 GRUPO 15 MANZANA A LOTE 15',
1237,
'A',
4
);
INSERT INTO Empleado01 VALUES (
SQ_EMPLEADO01.NEXTVAL,
'MIGGUEL',
'MOLINA',
58648521,
965985214,
'FEMENINO',
'SECTOR 7 GRUPO 20 MANZANA E LOTE 12',
12348,
'A',
5
);
INSERT INTO Empleado01 VALUES (
SQ_EMPLEADO01.NEXTVAL,
'PIER',
'JAN',
85451254,
936585645,
'MASCULINO',
'SECTOR 4 GRUPO 18 MANZANA A LOTE 15',
1239,
'A',
6
);
COMMIT;
SELECT *
FROM Empleado01;
----
create table Tipo_empleado01(
idcodigo_Empleado number primary key,
estado  varchar2(1),
nombre  varchar2(60)
);
------------CREAMOS LA SECUENCIA TIPO DE EMPLEADO
CREATE SEQUENCE SQ_TIPO_EMPLEADO01
START WITH 1
INCREMENT BY 1 
MINVALUE 1
NOCYCLE;
---------PROBAMOS LA SECUENCIA
SELECT SQ_TIPO_EMPLEADO01.NEXTVAL
FROM DUAL;
------------INSERTAMOS REGISTRO
INSERT INTO Tipo_empleado01 VALUES (
SQ_TIPO_EMPLEADO01.NEXTVAL,
'A',
'Muy buen empleado'
);
INSERT INTO Tipo_empleado01 VALUES (
SQ_TIPO_EMPLEADO01.NEXTVAL,
'A',
'Buen empleado'
);
INSERT INTO Tipo_empleado01 VALUES (
SQ_TIPO_EMPLEADO01.NEXTVAL,
'A',
'Regular empleado'
);
INSERT INTO Tipo_empleado01 VALUES (
SQ_TIPO_EMPLEADO01.NEXTVAL,
'A',
'Mal empleado'
);
INSERT INTO Tipo_empleado01 VALUES (
SQ_TIPO_EMPLEADO01.NEXTVAL,
'A',
'Eficiente empleado'
);
INSERT INTO Tipo_empleado01 VALUES (
SQ_TIPO_EMPLEADO01.NEXTVAL,
'A',
'Muy mal empleado'
);
COMMIT;
SELECT *
FROM Tipo_empleado01;
create table comida01 (
idcomida number primary key,
nombre  VARCHAR2(50),
descripcion VARCHAR2(50), 
precio      number,
codigo_comida   number,
estado  varchar2(1)
);
----------CREAMOS LA SECUENCIA COMIDA
CREATE SEQUENCE SQ_COMIDA01
START WITH 1
INCREMENT BY 1 
MINVALUE 1
NOCYCLE;
---------PROBAMOS LA SECUENCIA
SELECT SQ_COMIDA01.NEXTVAL
FROM DUAL;
----------Insert Registro
INSERT INTO  comida01 VALUES (
SQ_COMIDA01.NEXTVAL,
'Lomo Saltado',
'plato 1',
20,
1,
'A'
);
INSERT INTO  comida01 VALUES (
SQ_COMIDA01.NEXTVAL,
'Pollo a la Brasa',
'plato 2',
45,
2,
'A'
);
INSERT INTO  comida01 VALUES (
SQ_COMIDA01.NEXTVAL,
'Pure con Milanesa',
'plato 3',
12,
3,
'A'
);
INSERT INTO  comida01 VALUES (
SQ_COMIDA01.NEXTVAL,
'Ají de Gallina',
'plato 4',
18,
4,
'A'
);
INSERT INTO  comida01 VALUES (
SQ_COMIDA01.NEXTVAL,
'Seco de Cabrito',
'plato 5',
16,
5,
'A'
);
INSERT INTO  comida01 VALUES (
SQ_COMIDA01.NEXTVAL,
'Tallarines Verdes con Filete',
'plato 6',
15,
6,
'A'
);
COMMIT;
SELECT *
FROM comida01;
---------
create table Tipo_comida01(
idcodigo_comida number primary key,
estado  varchar2(1),
nombre varchar2(50)
);
------CREAMOS LA SECUENCIA TIPO DE COMIDA
CREATE SEQUENCE SQ_TIPO_COMIDA01
START WITH 1
INCREMENT BY 1 
MINVALUE 1
NOCYCLE;
---------PROBAMOS LA SECUENCIA
SELECT SQ_TIPO_COMIDA01.NEXTVAL
FROM DUAL;
--- INSERTAMOS REGISTRO
INSERT INTO Tipo_comida01 VALUES(
SQ_TIPO_COMIDA01.NEXTVAL,
'A',
'CARO'
);
INSERT INTO Tipo_comida01 VALUES (
SQ_TIPO_COMIDA01.NEXTVAL,
'A',
'MUY CARO'
);
INSERT INTO Tipo_comida01 VALUES(
SQ_TIPO_COMIDA01.NEXTVAL,
'A',
'BARATO'
);
INSERT INTO Tipo_comida01 VALUES (
SQ_TIPO_COMIDA01.NEXTVAL,
'A',
'BARATO'd
);
INSERT INTO Tipo_comida01 VALUES (
SQ_TIPO_COMIDA01.NEXTVAL,
'A',
'BARATO'
);
INSERT INTO Tipo_comida01 VALUES (
SQ_TIPO_COMIDA01.NEXTVAL,
'A',
'CARO'
);
COMMIT;
SELECT *
FROM Tipo_comida01;



