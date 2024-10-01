--TABLAS

CREATE TABLE FISICOS(
 Videojuego   NUMBER(6)   NOT NULL,
 tipoEmpaque  VARCHAR(1)  NOT NULL,
 stock        VARCHAR(1)  NOT NULL );

CREATE TABLE DIGITALES(
 Videojuego  NUMBER(6)       NOT NULL,
 peso        DECIMAL(15, 5)  NOT NULL );

CREATE TABLE DLCS(
 D_id        NUMBER(6)       NOT NULL,
 nombre      VARCHAR(30)     NOT NULL,
 precio      DECIMAL(15, 5)  NOT NULL,
 etiqueta    VARCHAR(3)      NOT NULL,
 p_url       VARCHAR(50)     NOT NULL,
 imagen      CHAR(1)         NOT NULL,
 trailer     CHAR(1),
 sinopsis    VARCHAR(100)    NOT NULL,
 Videojuego  NUMBER(6)       NOT NULL );


	
CREATE TABLE PLATAFORMAS(
 P_id      NUMBER(6)    NOT NULL,
 nombre    VARCHAR(15)  NOT NULL,		
 version   VARCHAR(10)  NOT NULL );

CREATE TABLE VIDEOJUEGOS(
 V_id           NUMBER(6)       NOT NULL,
 nombre         VARCHAR(50)     NOT NULL,
 precio         DECIMAL(15, 5)  NOT NULL,   
 etiqueta       VARCHAR(1)      NOT NULL,
 p_url          VARCHAR(50)     NOT NULL,
 sinopsis       VARCHAR(100)    NOT NULL,
 imagenes       CHAR(1)         NOT NULL,
 trailer        CHAR(1)         NOT NULL,
 Plataforma     NUMBER(6)       NOT NULL,
 CarritoCompra  NUMBER(6)       NOT NULL);

CREATE TABLE VIDEOJUEGOSPORCATEGORIAS( 
 Categoria   NUMBER(6)  NOT NULL,
 Videojuego  NUMBER(6)  NOT NULL );
	
CREATE TABLE CATEGORIAS(
 C_id         NUMBER(6)     NOT NULL,
 nombre       VARCHAR(15)   NOT NULL,
 descripcion  VARCHAR(100)  NOT NULL );
     
CREATE TABLE RECOMIENDAN(
 Usuario     NUMBER(6)  NOT NULL,
 Videojuego  NUMBER(6)  NOT NULL );
 
CREATE TABLE USUARIOS(
 U_id              NUMBER(6)    NOT NULL,
 nombre            CHAR(20)     NOT NULL,
 cuenta            VARCHAR(20)  NOT NULL,
 contraseña        VARCHAR(20)  NOT NULL,                  
 correo            VARCHAR(50)  NOT NULL,
 nickName          VARCHAR(15)  NOT NULL,
 createdAt         DATE         NOT NULL,
 direccion         VARCHAR(30)  NOT NULL,
 Envio             NUMBER(6)    NOT NULL,
 horasRegistradas  NUMBER(10)   NOT NULL,
 nombreVideojuego  VARCHAR(50)  NOT NULL,
 CarritoCompra     NUMBER(6)    NOT NULL,
 Videojuego        NUMBER(6)    NOT NULL  );

CREATE TABLE CARRITOSCOMPRAS(
 CC_id              NUMBER(6)       NOT NULL,
 subTotal           DECIMAL(15, 5)  NOT NULL,
 precioVideojuego   DECIMAL(15, 5)  NOT NULL,
 dlcPrecio          DECIMAL(15, 5)  NOT NULL,
 metodoPago         CHAR(1)         NOT NULL,
 total              DECIMAL(15, 5)  NOT NULL,
 correoUsuario      VARCHAR(50)     NOT NULL,
 CarritoCompra      NUMBER(6)       NOT NULL );


CREATE TABLE ENVIOS(
 E_id               NUMBER(6)    NOT NULL,
 direccionUsuario   VARCHAR(50)  NOT NULL,
 fisico             NUMBER(10)   NOT NULL,
 carritoCompra      NUMBER(6)    NOT NULL);

--XTablas
DROP TABLE FISICOS;
DROP TABLE DIGITALES;
DROP TABLE DLCS;
DROP TABLE VIDEOJUEGOSPORCATEGORIAS;
DROP TABLE RECOMIENDAN;
DROP TABLE ENVIOS;
DROP TABLE CATEGORIAS;
DROP TABLE USUARIOS;
DROP TABLE VIDEOJUEGOS;
DROP TABLE PLATAFORMAS;
DROP TABLE CARRITOSCOMPRAS;
