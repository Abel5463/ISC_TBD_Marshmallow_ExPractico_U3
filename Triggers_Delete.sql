DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON cuartos
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM CUARTO_ID WHERE CUARTO_ID = OLD.CUARTO_ID;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON cuartos
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM PACIENTE_ID WHERE PACIENTE_ID = OLD.PACIENTE_ID;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON cuartos
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM NUMERO_CUARTO WHERE NUMERO_CUARTO = OLD.NUMERO_CUARTO;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON cuartos
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM INICIO_ESTADIA WHERE INICIO_ESTADIA = OLD.INICIO_ESTADIA;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON cuartos
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM FIN_ESTADIA WHERE FIN_ESTADIA = OLD.FIN_ESTADIA;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON cuentas_pacientes
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM CUENTAS_PACIENTES_ID WHERE CUENTAS_PACIENTES_ID = OLD.CUENTAS_PACIENTES_ID;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON cuentas_pacientes
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM PACIENTE_ID WHERE PACIENTE_ID = OLD.PACIENTE_ID;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON cuentas_pacientes
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM FORMA_PAGO_PAC_ID WHERE FORMA_PAGO_PAC_ID = OLD.FORMA_PAGO_PAC_ID;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON cuentas_pacientes
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM FECHA_EMISION WHERE FECHA_EMISION = OLD.FECHA_EMISION;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON cuentas_pacientes
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM OTROS WHERE OTROS = OLD.OTROS;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON cuentas_pacientes_detlles
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM CUANTAS_PACIENTES_DET_ID WHERE CUANTAS_PACIENTES_DET_ID = OLD.CUANTAS_PACIENTES_DET_ID;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON cuentas_pacientes_detlles
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM CUANTAS_PACIENTES_ID WHERE CUANTAS_PACIENTES_ID = OLD.CUANTAS_PACIENTES_ID;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON cuentas_pacientes_detlles
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM DETALLE WHERE DETALLE = OLD.DETALLE;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON cuentas_pacientes_detlles
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM CANTIDAD WHERE CANTIDAD = OLD.CANTIDAD;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON cuentas_pacientes_detlles
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM CSOTO_TOTAL WHERE CSOTO_TOTAL = OLD.CSOTO_TOTAL;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON direcciones
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM DIRECCION_ID WHERE DIRECCION_ID = OLD.DIRECCION_ID;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON direcciones
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM CALLE WHERE CALLE = OLD.CALLE;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON direcciones
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM NUMERO_EXTERIOR WHERE NUMERO_EXTERIOR = OLD.NUMERO_EXTERIOR;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON direcciones
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM NUMERO_INTERIOR WHERE NUMERO_INTERIOR = OLD.NUMERO_INTERIOR;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON direcciones
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM COLONIA WHERE COLONIA = OLD.COLONIA;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON direcciones
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM CODIGO_POSTAL WHERE CODIGO_POSTAL = OLD.CODIGO_POSTAL;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON direcciones
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM CIUDAD WHERE CIUDAD = OLD.CIUDAD;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON direcciones
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM ESTADO WHERE ESTADO = OLD.ESTADO;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON direcciones
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM PAIS WHERE PAIS = OLD.PAIS;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON direcciones
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM OTROS WHERE OTROS = OLD.OTROS;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON direcciones_empleados
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM DIRECCION_EMPLEADOS_ID WHERE DIRECCION_EMPLEADOS_ID = OLD.DIRECCION_EMPLEADOS_ID;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON direcciones_empleados
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM EMPLEADOS_ID WHERE EMPLEADOS_ID = OLD.EMPLEADOS_ID;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON direcciones_empleados
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM DIRECCION_ID WHERE DIRECCION_ID = OLD.DIRECCION_ID;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON direcciones_pacientes
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM DIRECCION_PACIENTE_ID WHERE DIRECCION_PACIENTE_ID = OLD.DIRECCION_PACIENTE_ID;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON direcciones_pacientes
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM PACIENTE_ID WHERE PACIENTE_ID = OLD.PACIENTE_ID;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON direcciones_pacientes
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM DIRECCION_ID WHERE DIRECCION_ID = OLD.DIRECCION_ID;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON empleados
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM EMPLEADOS_ID WHERE EMPLEADOS_ID = OLD.EMPLEADOS_ID;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON empleados
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM NOMBRE WHERE NOMBRE = OLD.NOMBRE;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON empleados
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM APELLIDO_PAT WHERE APELLIDO_PAT = OLD.APELLIDO_PAT;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON empleados
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM APELLIDO_MAT WHERE APELLIDO_MAT = OLD.APELLIDO_MAT;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON empleados
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM TITULO WHERE TITULO = OLD.TITULO;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON empleados
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM FECHA_NACIMIENTO WHERE FECHA_NACIMIENTO = OLD.FECHA_NACIMIENTO;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON empleados
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM OTROS WHERE OTROS = OLD.OTROS;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON formas_pago
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM FORMA_PAGO_ID WHERE FORMA_PAGO_ID = OLD.FORMA_PAGO_ID;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON formas_pago
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM FORMA_PAGO_ID WHERE FORMA_PAGO_ID = OLD.FORMA_PAGO_ID;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON formas_pago
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM FORMA_PAGO WHERE FORMA_PAGO = OLD.FORMA_PAGO;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON formas_pago_pacientes
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM FORMA_PAGO_PAC_ID WHERE FORMA_PAGO_PAC_ID = OLD.FORMA_PAGO_PAC_ID;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON formas_pago_pacientes
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM PACIENTE_ID WHERE PACIENTE_ID = OLD.PACIENTE_ID;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON formas_pago_pacientes
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM FORMA_PAGO_ID WHERE FORMA_PAGO_ID = OLD.FORMA_PAGO_ID;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON formas_pago_pacientes
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM DETALLES WHERE DETALLES = OLD.DETALLES;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON pacientes
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM PACIENTE_ID WHERE PACIENTE_ID = OLD.PACIENTE_ID;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON pacientes
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM NOMBRE WHERE NOMBRE = OLD.NOMBRE;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON pacientes
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM APELLIDO_PAT WHERE APELLIDO_PAT = OLD.APELLIDO_PAT;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON pacientes
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM APELLIDO_MAT WHERE APELLIDO_MAT = OLD.APELLIDO_MAT;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON pacientes
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM APELLIDO_PAT WHERE APELLIDO_PAT = OLD.APELLIDO_PAT;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON pacientes
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM PESO WHERE PESO = OLD.PESO;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON pacientes
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM ALTURA WHERE ALTURA = OLD.ALTURA;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON pacientes
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM NUMERO_SEGURO_SOCIAL WHERE NUMERO_SEGURO_SOCIAL = OLD.NUMERO_SEGURO_SOCIAL;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON pacientes
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM genero WHERE genero = OLD.genero;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON pacientes
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM TELEFONO_CASA WHERE TELEFONO_CASA = OLD.TELEFONO_CASA;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON pacientes
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM TELEFONO_TRABAJO WHERE TELEFONO_TRABAJO = OLD.TELEFONO_TRABAJO;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON pacientes
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM TELEFONO_MOVIL WHERE TELEFONO_MOVIL = OLD.TELEFONO_MOVIL;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON pacientes
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM OTROS WHERE OTROS = OLD.OTROS;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON registro_pacientes
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM REGISTRO_PACIENTE WHERE REGISTRO_PACIENTE = OLD.REGISTRO_PACIENTE;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON registro_pacientes
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM PACIENTE_ID WHERE PACIENTE_ID = OLD.PACIENTE_ID;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON registro_pacientes
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM CUENTAS_PACIENTES_ID WHERE CUENTAS_PACIENTES_ID = OLD.CUENTAS_PACIENTES_ID;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON registro_pacientes
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM REGISTRO_POR_EMPLEADOS_ID WHERE REGISTRO_POR_EMPLEADOS_ID = OLD.REGISTRO_POR_EMPLEADOS_ID;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON registro_pacientes
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM FECHA_ADMISION WHERE FECHA_ADMISION = OLD.FECHA_ADMISION;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON registro_pacientes
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM CONDICION_MEDICA WHERE CONDICION_MEDICA = OLD.CONDICION_MEDICA;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_borrado_cascada
AFTER DELETE ON registro_pacientes
FOR EACH ROW
BEGIN
  -- Borrar registros relacionados en la tabla secundaria
  DELETE FROM OTROS WHERE OTROS = OLD.OTROS;
END //
DELIMITER ;