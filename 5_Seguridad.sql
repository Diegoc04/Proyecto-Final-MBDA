--Indices

--Usuarios
CREATE INDEX idx_correo_usuario ON USUARIOS(correo);

--Videojuegos
CREATE INDEX idx_nombre_Videojuego ON VIDEOJUEGOS(nombre);
CREATE INDEX idx_precio_Videojuego ON VIDEOJUEGOS(precio);
CREATE INDEX idx_etiqueta_Videojuego ON VIDEOJUEGOS(etiqueta);

--Dlcs
CREATE INDEX idx_nombre_Dlc ON DLCS(nombre);
CREATE INDEX idx_precio_Dlc ON DLCS(precio);

--Plataformas
CREATE INDEX idx_nombre_plataforma ON PLATAFORMAS(nombre);

--Categoria
CREATE INDEX idx_nombre_categoria ON CATEGORIAS(nombre);

--vistas

CREATE VIEW vw_VideoJuegoRecomendando
AS
SELECT VIDEOJUEGOS.nombre, imagenes, trailer
FROM VIDEOJUEGOS JOIN RECOMIENDAN ON V_id = Videojuego JOIN USUARIOS ON Usuario = U_id;


CREATE VIEW vw_CuentaUsuario
AS
SELECT  nombre, cuenta, correo, createdAt, nickName
FROM Usuarios;


CREATE VIEW vw_BibliotecaUsuario
AS
SELECT  nickName, horasRegistradas, nombreVideojuego
FROM Usuarios;

CREATE VIEW vw_VideoJuegoC
AS 
SELECT CATEGORIAS.nombre, CATEGORIAS.descripcion, VIDEOJUEGOS.precio, VIDEOJUEGOS.p_url, VIDEOJUEGOS.imagenes
FROM VIDEOJUEGOS JOIN VIDEOJUEGOSPORCATEGORIAS ON V_id = Videojuego JOIN CATEGORIAS ON Categoria = C_id;
	
--- ACTORESE

CREATE OR REPLACE PACKAGE PKG_Usuario IS
    PROCEDURE CarritoCompraActualizar(subTotal CARRITOSCOMPRAS.subTotal%Type, metodoPago CARRITOSCOMPRAS.metodoPago%Type);
    PROCEDURE UsuarioActualizar(correo USUARIOS.correo%Type, contraseña USUARIOS.contraseña%Type, direccion USUARIOS.direccion%Type);
    PROCEDURE UsuarioEliminar(cuenta USUARIOS.cuenta%Type);
END PKG_Usuario;
/

CREATE OR REPLACE PACKAGE PKG_Administrador_de_videojuegos IS
    PROCEDURE VideojuegoActualizar(precio VIDEOJUEGOS.precio%Type, sinopsis VIDEOJUEGOS.sinopsis%Type);
    PROCEDURE VideojuegoEliminar(etiqueta VIDEOJUEGOS.etiqueta%Type, p_url VIDEOJUEGOS.p_url%Type, sinopsis VIDEOJUEGOS.sinopsis%Type);
    PROCEDURE VideojuegoInsertar(nombre VIDEOJUEGOS.nombre%Type, precio VIDEOJUEGOS.precio%Type, imagenes VIDEOJUEGOS.imagenes%Type, trailer VIDEOJUEGOS.trailer%Type);
    PROCEDURE DLCActualizar(precio DLCS.precio%Type, sinopsis DLCS.sinopsis%Type);
    PROCEDURE DLCEliminar(etiqueta DLCS.etiqueta%Type, p_url DLCS.p_url%Type, sinopsis DLCS.sinopsis%Type);
    PROCEDURE DLCInsertar(nombre VIDEOJUEGOS.nombre%Type, precio DLCS.precio%Type, imagen DLCS.imagen%Type, trailer DLCS.trailer%Type);
    PROCEDURE PlataformaActualizar(nombre PLATAFORMAS.nombre%Type, version PLATAFORMAS.version%Type);
    PROCEDURE PlataformaEliminar(nombre PLATAFORMAS.nombre%Type, version PLATAFORMAS.version%Type);
    PROCEDURE PlataformaInsertar(nombre PLATAFORMAS.nombre%Type, version PLATAFORMAS.version%Type);
    PROCEDURE CategoriaActualizar(nombre CATEGORIAS.nombre%Type, descripcion CATEGORIAS.descripcion%Type);
    PROCEDURE CategoriaEliminar(nombre CATEGORIAS.nombre%Type, descripcion CATEGORIAS.descripcion%Type);
    PROCEDURE CategoriaInsertar(nombre CATEGORIAS.nombre%Type, descripcion CATEGORIAS.descripcion%Type);
END PKG_Administrador_de_videojuegos;
/	


	

---ACTORESI
CREATE OR REPLACE PACKAGE body PKG_Usuario IS
    PROCEDURE CarritoCompraActualizar(subTotal CARRITOSCOMPRAS.subTotal%Type, metodoPago CARRITOSCOMPRAS.metodoPago%Type)
        IS
        BEGIN
            PKG_Usuario.CarritoCompraActualizar(subTotal, metodoPago);
    END CarritoCompraActualizar;
    PROCEDURE UsuarioActualizar(correo USUARIOS.correo%Type, contraseña USUARIOS.contraseña%Type, direccion USUARIOS.direccion%Type)
        IS
        BEGIN
            PKG_Usuario.UsuarioActualizar(correo, contraseña, direccion);
    END UsuarioActualizar;
    PROCEDURE UsuarioEliminar(cuenta USUARIOS.cuenta%Type)
        IS
        BEGIN
            PKG_Usuario.UsuarioEliminar(cuenta);
    END UsuarioEliminar;
END PKG_Usuario;
/

CREATE OR REPLACE PACKAGE body PKG_Administrador_de_videojuegos IS
    PROCEDURE VideojuegoActualizar(precio VIDEOJUEGOS.precio%Type, sinopsis VIDEOJUEGOS.sinopsis%Type)
        IS
        BEGIN
            PKG_Administrador_de_videojuegos.VideojuegoActualizar(precio, sinopsis);
    END VideojuegoActualizar;
    PROCEDURE VideojuegoEliminar(etiqueta VIDEOJUEGOS.etiqueta%Type, p_url VIDEOJUEGOS.p_url%Type, sinopsis VIDEOJUEGOS.sinopsis%Type)
        IS
        BEGIN
            PKG_Administrador_de_videojuegos.VideojuegoEliminar(etiqueta, p_url, sinopsis);
    END VideojuegoEliminar;
    PROCEDURE VideojuegoInsertar(nombre VIDEOJUEGOS.nombre%Type, precio VIDEOJUEGOS.precio%Type, imagenes VIDEOJUEGOS.imagenes%Type, trailer VIDEOJUEGOS.trailer%Type)
        IS
        BEGIN
            PKG_Administrador_de_videojuegos.VideojuegoInsertar(nombre, precio, imagenes, trailer);
    END VideojuegoInsertar;
    PROCEDURE DLCActualizar(precio DLCS.precio%Type, sinopsis DLCS.sinopsis%Type)
        IS
        BEGIN
            PKG_Administrador_de_videojuegos.DLCActualizar(precio, sinopsis);
    END DLCActualizar;
    PROCEDURE DLCEliminar(etiqueta DLCS.etiqueta%Type, p_url DLCS.p_url%Type, sinopsis DLCS.sinopsis%Type)
        IS
        BEGIN
            PKG_Administrador_de_videojuegos.DLCEliminar(etiqueta, p_url, sinopsis);
    END DLCEliminar;
     PROCEDURE DLCInsertar(nombre VIDEOJUEGOS.nombre%Type, precio DLCS.precio%Type, imagen DLCS.imagen%Type, trailer DLCS.trailer%Type)
        IS
        BEGIN
            PKG_Administrador_de_videojuegos.DLCInsertar(nombre, precio, imagen, trailer);
    END DLCInsertar;
    PROCEDURE PlataformaActualizar(nombre PLATAFORMAS.nombre%Type, version PLATAFORMAS.version%Type)
        IS
        BEGIN
            PKG_Administrador_de_videojuegos.PlataformaActualizar(nombre, version);
    END PlataformaActualizar;
    PROCEDURE PlataformaEliminar(nombre PLATAFORMAS.nombre%Type, version PLATAFORMAS.version%Type)
        IS
        BEGIN
            PKG_Administrador_de_videojuegos.PlataformaEliminar(nombre, version);
    END PlataformaEliminar;
    PROCEDURE PlataformaInsertar(nombre PLATAFORMAS.nombre%Type, version PLATAFORMAS.version%Type)
        IS
        BEGIN
            PKG_Administrador_de_videojuegos.PlataformaInsertar(nombre, version);
    END PlataformaInsertar;
    PROCEDURE CategoriaActualizar(nombre CATEGORIAS.nombre%Type, descripcion CATEGORIAS.descripcion%Type)
        IS
        BEGIN
            PKG_Administrador_de_videojuegos.CategoriaActualizar(nombre, descripcion);
    END CategoriaActualizar;
    PROCEDURE CategoriaEliminar(nombre CATEGORIAS.nombre%Type, descripcion CATEGORIAS.descripcion%Type)
        IS
        BEGIN
            PKG_Administrador_de_videojuegos.CategoriaEliminar(nombre, descripcion);
    END CategoriaEliminar;
     PROCEDURE CategoriaInsertar(nombre CATEGORIAS.nombre%Type, descripcion CATEGORIAS.descripcion%Type)
        IS
        BEGIN
            PKG_Administrador_de_videojuegos.CategoriaInsertar(nombre, descripcion);
    END CategoriaInsertar;
END PKG_Administrador_de_videojuegos;
/

--SEGURIDAD
CREATE ROLE Usuario;
CREATE ROLE Administrador_de_videojuegos;
CREATE ROLE Area_de_ventas;
GRANT EXECUTE ON PKG_Usuario TO Usuario;
GRANT EXECUTE ON PKG_Administrador_de_videojuegos TO Administrador_de_videojuegos;


--XSEGURIDAD
DROP ROLE Usuario;
DROP ROLE Administrador_de_videojuegos;
DROP ROLE Area_de_ventas;
DROP PACKAGE PKG_Usuario;
DROP PACKAGE PKG_Administrador_de_videojuegos;
