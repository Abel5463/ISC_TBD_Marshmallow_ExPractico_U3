DELIMITER //
CREATE TRIGGER trigger_actualizacion_cascada
AFTER UPDATE ON cuartos
FOR EACH ROW
BEGIN
  -- Actualizar registros relacionados en la tabla secundaria
  UPDATE pacientes SET CUARTO_ID = NEW.CUARTO_ID WHERE CUARTO_ID = OLD.CUARTO_ID;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_actualizacion_cascada
AFTER UPDATE ON direcciones_pacientes
FOR EACH ROW
BEGIN
  -- Actualizar registros relacionados en la tabla secundaria
  UPDATE pacientes SET PACIENTE_ID = NEW.PACIENTE_ID WHERE PACIENTE_ID = OLD.PACIENTE_ID;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_actualizacion_cascada
AFTER UPDATE ON direcciones_pacientes
FOR EACH ROW
BEGIN
  -- Actualizar registros relacionados en la tabla secundaria
  UPDATE direcciones SET DIRECCION_ID = NEW.DIRECCION_ID  WHERE DIRECCION_ID = OLD.DIRECCION_ID ;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_actualizacion_cascada
AFTER UPDATE ON direcciones_empleados
FOR EACH ROW
BEGIN
  -- Actualizar registros relacionados en la tabla secundaria
  UPDATE empleados SET EMPLEADOS_ID = NEW.EMPLEADOS_ID  WHERE EMPLEADOS_ID = OLD.EMPLEADOS_ID ;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_actualizacion_cascada
AFTER UPDATE ON direcciones_empleados
FOR EACH ROW
BEGIN
  -- Actualizar registros relacionados en la tabla secundaria
  UPDATE direcciones SET DIRECCION_ID = NEW.DIRECCION_ID  WHERE DIRECCION_ID = OLD.DIRECCION_ID ;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_actualizacion_cascada
AFTER UPDATE ON registro_pacientes
FOR EACH ROW
BEGIN
  -- Actualizar registros relacionados en la tabla secundaria
  UPDATE pacientes SET PACIENTE_ID = NEW.PACIENTE_ID  WHERE PACIENTE_ID = OLD.PACIENTE_ID ;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_actualizacion_cascada
AFTER UPDATE ON registro_pacientes
FOR EACH ROW
BEGIN
  -- Actualizar registros relacionados en la tabla secundaria
  UPDATE empleados SET REGISTRO_POR_EMPLEADO_ID = NEW.REGISTRO_POR_EMPLEADO_ID  WHERE REGISTRO_POR_EMPLEADO_ID = OLD.REGISTRO_POR_EMPLEADO_ID ;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_actualizacion_cascada
AFTER UPDATE ON cuentas_pacientes
FOR EACH ROW
BEGIN
  -- Actualizar registros relacionados en la tabla secundaria
  UPDATE pacientes SET PACIENTE_ID = NEW.PACIENTE_ID  WHERE PACIENTE_ID = OLD.PACIENTE_ID ;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_actualizacion_cascada
AFTER UPDATE ON cuentas_pacientes
FOR EACH ROW
BEGIN
  -- Actualizar registros relacionados en la tabla secundaria
  UPDATE formas_pago_pacientes SET FORMA_PAGO_PAC_ID = NEW.FORMA_PAGO_PAC_ID  WHERE FORMA_PAGO_PAC_ID = OLD.FORMA_PAGO_PAC_ID ;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_actualizacion_cascada
AFTER UPDATE ON cuentas_pacientes_detlles
FOR EACH ROW
BEGIN
  -- Actualizar registros relacionados en la tabla secundaria
  UPDATE cuentas_pacientes SET CUENTAS_PACIENTES_ID= NEW.CUENTAS_PACIENTES_ID  WHERE CUENTAS_PACIENTES_ID = CUENTAS_PACIENTES_ID ;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_actualizacion_cascada
AFTER UPDATE ON formas_pago_pacientes
FOR EACH ROW
BEGIN
  -- Actualizar registros relacionados en la tabla secundaria
  UPDATE pacientes SET PACIENTE_ID= NEW.PACIENTE_ID  WHERE PACIENTE_ID = PACIENTE_ID ;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_actualizacion_cascada
AFTER UPDATE ON formas_pago_pacientes
FOR EACH ROW
BEGIN
  -- Actualizar registros relacionados en la tabla secundaria
  UPDATE formas_pago SET FORMA_PAGO_ID= NEW.FORMA_PAGO_ID WHERE FORMA_PAGO_ID = FORMA_PAGO_ID ;
END //
DELIMITER ;

