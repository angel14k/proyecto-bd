create table MONEDA
(
pk_id_moneda_in int primary key,
tipo_moneda_ch char(3),
fecha_creacion_dt datetime,
fecha_modificacion_dt datetime
)

create table CUENTA
(
pk_id_cuenta_in int primary key,
fk_id_moneda_in int,
numero_cuenta_vc varchar(30),
saldo_de decimal(12,2),
fecha_creacion_dt datetime,
fecha_modificacion_dt datetime,
foreign key (fk_id_moneda_in) references MONEDA(pk_id_moneda_in)
)

create table MOVIMIENTO
(
pk_id_movimiento_in int primary key,
fk_id_cuenta_in int,
tipo_movimiento_vc varchar(30),
monto_de decimal(12,2),
fecha_dt datetime,
fecha_creacion_dt datetime,
fecha_modificacion_dt datetime,
foreign key (fk_id_cuenta_in) references CUENTA(pk_id_cuenta_in)
)

create table TIPO_CAMBIO
(
pk_id_tipo_cambio_in int primary key,
fk_id_moneda_origen_in int,
fk_id_moneda_destino_in int,
valor_de decimal(12,2),
fecha_dt datetime,
fecha_creacion_dt datetime,
fecha_modificacion_dt datetime,
foreign key (fk_id_moneda_origen_in) references MONEDA(pk_id_moneda_in),
foreign key (fk_id_moneda_destino_in) references MONEDA(pk_id_moneda_in)
)