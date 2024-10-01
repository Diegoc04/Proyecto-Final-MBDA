--PoblarOK 

--  Categorias
insert into CATEGORIAS (C_id, nombre, descripcion) values ('1', 'accion', '1afsfsf');
insert into CATEGORIAS (C_ID, nombre, descripcion) values ('2', 'aventura', 'dshwrfth');


--  CarritoCompras
insert into CARRITOSCOMPRAS (CC_id, subTotal, precioVideojuego, dlcPrecio, metodoPago, total, correoUsuario, CarritoCompra) values ('1', 120.0, 100.0, 20.0,'D',110.0,'sdfffreq','1');
insert into CARRITOSCOMPRAS (CC_id, subTotal, precioVideojuego, dlcPrecio, metodoPago, total, correoUsuario, CarritoCompra) values ('2', 120.0, 100.0, 20.0,'C',900.0,'eiwijqma','2');

--  Plataformas
insert into PLATAFORMAS (P_id, nombre, version) values ('1', 'Nintendo', '10.6');
insert into PLATAFORMAS (P_id, nombre, version) values ('2', 'PC', '4.65');

--  Videojuegos
insert into VIDEOJUEGOS (V_id, nombre, precio, etiqueta, p_url, sinopsis, imagenes, trailer, Plataforma, CarritoCompra) values ('1', 'Mario', 100.0, 'E', '2rwsaf', 'wefwfe', 'P', 'M' , '1', '1');
insert into VIDEOJUEGOS (V_id, nombre, precio, etiqueta, p_url, sinopsis, imagenes, trailer, Plataforma, CarritoCompra) values ('2', 'Mario 2', 120.0, 'E', '12eaf', 'w12efe', 'P', 'M' , '2', '2');

--  Fisicos
insert into FISICOS (Videojuego, tipoEmpaque, stock) values ('1', 'D', 'S');
insert into FISICOS (Videojuego, tipoEmpaque, stock) values ('2', 'C', 'N');

--  Digitales
insert into DIGITALES (Videojuego, Peso) values ('1', 20.5);
insert into DIGITALES (Videojuego, Peso) values ('2', 23.5);

--  DLCS
insert into DLCS (D_id, nombre, precio, etiqueta, p_url, imagen, trailer, sinopsis, Videojuego) values ('1', 'soundtrack', 100.0, 'E', '2rwsaf', 'P', 'M', 'sdfsfd' , '1');
insert into DLCS (D_id, nombre, precio, etiqueta, p_url, imagen, trailer, sinopsis, Videojuego) values ('2', 'pictures', 120.7, 'T', '4sgdag', 'S', 'M', 'sASDFd' , '2');

--  VideojuegosPorCategorias
insert into VIDEOJUEGOSPORCATEGORIAS (Categoria, Videojuego) values ('1', '1');
insert into VIDEOJUEGOSPORCATEGORIAS (Categoria, Videojuego) values ('2', '2');

--  Usuarios
insert into USUARIOS (U_id, nombre, cuenta, contraseña, correo, nickName, createdAt, direccion, Envio, horasRegistradas, nombreVideojuego, carritoCompra, Videojuego) values ('1', 'Roberto de Luque', 'vegetta777', 'wq3rf', 'vegeta@gmail.com', 'vegetta777', '15/4/98' , 'sadfwef' , '1' , '1' , '1','1', '1');
insert into USUARIOS (U_id, nombre, cuenta, contraseña, correo, nickName, createdAt, direccion, Envio, horasRegistradas, nombreVideojuego, carritoCompra, Videojuego) values ('2', 'Guillermo Díaz', 'willyrex', 'xfwq	', 'willy@gmail.com', 'willyrex', '16/3/96' , 'lglslaq' , '2' , '2' , '2','2', '2');

--  Recomiendan
insert into RECOMIENDAN (Usuario, Videojuego) values ('1', '1');
insert into RECOMIENDAN (Usuario, Videojuego) values ('2', '2');

--  Envios
insert into ENVIOS (E_id, direccionUsuario, fisico, carritoCompra) values ('1', 'sgfege', '30', '1');
insert into ENVIOS (E_id, direccionUsuario, fisico, carritoCompra) values ('2', 'sfgde', '40', '2');


--  PoblarNoOK 


--  Categorias
insert into CATEGORIAS (C_id, nombre, descripcion) values ('1', '10', '1afsfsf');
insert into CATEGORIAS (C_id, nombre, descripcion) values ('2', 'aventura', '30');


--  CarritoCompras
insert into CARRITOSCOMPRAS (CC_id, subTotal, precioVideojuego, dlcPrecio, metodoPago, total, correoUsuario, CarritoCompra) values ('1', 120.0, '100', 20.0,'D',110.0,'sdfffreq','1');
insert into CARRITOSCOMPRAS (CC_id, subTotal, precioVideojuego, dlcPrecio, metodoPago, total, correoUsuario, CarritoCompra) values ('2', 120.0, 100.0, 20.0,'W',900.0,'eiwijqma','2');

--  Plataformas
insert into PLATAFORMAS (P_id, nombre, version) values ('1', 'Nintendo', '10');
insert into PLATAFORMAS (P_id, nombre, version) values ('2', '-7', '4.65');

--  Videojuegos
insert into VIDEOJUEGOS (V_id, nombre, precio, etiqueta, p_url, sinopsis, imagenes, trailer, Plataforma, CarritoCompra) values ('1', 'Mario', 100.0, 'E', '2rwsaf', 'wefwfe', 'Y', 'M' , '1', '1');
insert into VIDEOJUEGOS (V_id, nombre, precio, etiqueta, p_url, sinopsis, imagenes, trailer, Plataforma, CarritoCompra) values ('2', 'Mario 2', 120.0, 'E', '12eaf', 'w12efe', 'P', 'L' , '2', '2');

--  Fisicos
insert into FISICOS (Videojuego, tipoEmpaque, stock) values ('1', 'T', 'S');
insert into FISICOS (Videojuego, tipoEmpaque, stock) values ('2', 'C', 'H');

--  Digitales
insert into DIGITALES (Videojuego, Peso) values ('1', '20.5');
insert into DIGITALES (Videojuego, Peso) values ('2', '-9');

--  DLCs
insert into DLCS (D_id, nombre, precio, etiqueta, p_url, imagen, trailer, sinopsis, Videojuego) values ('1', 'soundtrack', 100.0, 'E', '2rwsaf', 'X', 'M', 'sdfsfd' , '1');
insert into DLCS (D_id, nombre, precio, etiqueta, p_url, imagen, trailer, sinopsis, Videojuego) values ('2', 'pictures', 120.7, 'T', '4sgdag', 'S', 'Z', 'sASDFd' , '2');

--  VideojuegosPorCategorias
insert into VIDEOJUEGOSPORCATEGORIAS (Categoria, Videojuego) values ('3', '3');
insert into VIDEOJUEGOSPORCATEGORIAS (Categoria, Videojuego) values ('-2', '2');

--  Usuarios
insert into USUARIOS (U_id, nombre, cuenta, contraseña, correo, nickName, createdAt, direccion, Envio, horasRegistradas, nombreVideojuego, carritoCompra, Videojuego) values ('1', 'Roberto de Luque', 'vegetta777', 'wq3rf', 'vegeta@gmail.com', 'vegetta777', '15/20/98' , 'sadfwef' , '1' , '1' , '1','1', '1');
insert into USUARIOS (U_id, nombre, cuenta, contraseña, correo, nickName, createdAt, direccion, Envio, horasRegistradas, nombreVideojuego, carritoCompra, Videojuego) values ('2', 'Guillermo Díaz', 'willyrex', '10', 'willy@gmail.com', 'willyrex', '16/98/96' , '3' , '2' , '2' , '2','2', '2');

--  Recomiendan
insert into RECOMIENDAN (Usuario, Videojuego) values ('-1', '1');
insert into RECOMIENDAN (Usuario, Videojuego) values ('2', '-2');

--  Envios
insert into ENVIOS (E_id, direccionUsuario, fisico, carritoCompra) values ('1', 'sgfege', 'agf', '1');
insert into ENVIOS (E_id, direccionUsuario, fisico, carritoCompra) values ('2', 'sfgde', 4.90, '2');

--Xpoblar
DELETE FROM  FISICOS;
DELETE FROM  DIGITALES;
DELETE FROM  DLCS;
DELETE FROM  VIDEOJUEGOSPORCATEGORIAS;
DELETE FROM  RECOMIENDAN;
DELETE FROM  ENVIOS;
DELETE FROM  CATEGORIAS;
DELETE FROM  USUARIOS;
DELETE FROM  VIDEOJUEGOS;
DELETE FROM  PLATAFORMAS;
DELETE FROM  CARRITOSCOMPRAS;