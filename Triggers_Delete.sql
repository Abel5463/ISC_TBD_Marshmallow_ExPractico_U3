DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON cuartos
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM pacientes WHERE PACIENTE_ID = OLD.PACIENTE_ID;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON direcciones_pacientes
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM pacientes WHERE PACIENTE_ID = OLD.PACIENTE_ID;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON direcciones_pacientes
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM direcciones WHERE DIRECCION_ID = OLD.DIRECCION_ID;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON direcciones_empleados
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM empleados WHERE EMPLEADOS_ID = OLD.EMPLEADOS_ID;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON direcciones_empleados
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM direcciones WHERE DIRECCION_ID = OLD.DIRECCION_ID;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON registro_pacientes
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM pacientes WHERE PACIENTE_ID = OLD.PACIENTE_ID;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON registro_pacientes
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM empleados WHERE REGISTRO_POR_EMPLEADO_ID = OLD.REGISTRO_POR_EMPLEADO_ID;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON cuentas_pacientes
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM pacientes WHERE PACIENTE_ID = OLD.PACIENTE_ID;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON cuentas_pacientes
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM formas_pago_pacientes WHERE FORMA_PAGO_PAC_ID = OLD.FORMA_PAGO_PAC_ID;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON cuentas_pacientes_detlles
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM cuentas_pacientes WHERE CUENTAS_PACIENTES_ID = OLD.CUENTAS_PACIENTES_ID;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON formas_pago_pacientes
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM pacientes WHERE PACIENTE_ID = OLD.PACIENTE_ID;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON formas_pago_pacientes
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM formas_pago WHERE FORMA_PAGO_ID = OLD.FORMA_PAGO_ID;
END //
DELIMITER ;