
-- Insertando datos

INSERT INTO MONEDA
(
pk_id_moneda_in,tipo_moneda_ch,fecha_creacion_dt,fecha_modificacion_dt
)
values
(1, 'BOB', GETDATE(), GETDATE()),
(2, 'USD', GETDATE(), GETDATE()),
(3, 'CLP', GETDATE(), GETDATE());


INSERT INTO CUENTA
(
pk_id_cuenta_in, fk_id_moneda_in, numero_cuenta_vc, saldo_de, 
fecha_creacion_dt, fecha_modificacion_dt
)
values
(1, 1, '100001', 5000.00, GETDATE(), GETDATE()),
(2, 2, '100002', 1000.00, GETDATE(), GETDATE()),
(3, 3, '100003', 500000.00, GETDATE(), GETDATE());

INSERT INTO MOVIMIENTO
(
pk_id_movimiento_in, fk_id_cuenta_in, tipo_movimiento_vc, monto_de,
fecha_dt, fecha_creacion_dt, fecha_modificacion_dt
)
values 
(1, 1, 'ABONO', 1000.00, GETDATE(), GETDATE(), GETDATE()),
(2, 1, 'RETIRO', 500.00, GETDATE(), GETDATE(), GETDATE()),
(3, 2, 'ABONO', 200.00, GETDATE(), GETDATE(), GETDATE());


INSERT INTO TIPO_CAMBIO
(
pk_id_tipo_cambio_in,  fk_id_moneda_origen_in, fk_id_moneda_destino_in,
valor_de, fecha_dt, fecha_creacion_dt, fecha_modificacion_dt
)
values
(1, 1, 2, 6.96, GETDATE(), GETDATE(), GETDATE()),
(2, 2, 1, 6.96, GETDATE(), GETDATE(), GETDATE()),
(3, 1, 3, 120.50, GETDATE(), GETDATE(), GETDATE());