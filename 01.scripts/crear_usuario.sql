-- Después seleccionamos en el mismo script la BD
use BD_TRANSACCIONES

-- Creamos al usuario sql
-- Aqui crearemos un usuario para esa base de datos y le daremos acceso.

CREATE LOGIN usuario_transacciones
with PASSWORD = 'usuario_transacciones123';

create USER usuario_transacciones
for LOGIN usuario_transacciones;

alter role db_datareader
add MEMBER usuario_transacciones;

alter role db_datawriter
add MEMBER usuario_transacciones;
