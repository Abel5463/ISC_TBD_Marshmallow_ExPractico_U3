DELIMITER :)
CREATE PROCEDURE Actualizar_pagos(IN PACIENTE_ID INT)
BEGIN
    DECLARE res VARCHAR(1000);
    
    SELECT GROUP_CONCAT(CONCAT(fp.CSOTO_TOTAL, ',', fpf.FORMA_PAGO) SEPARATOR ';')
    INTO res
    FROM pacientes p
    INNER JOIN Cuentas_pacientes cu ON p.PACIENTE_ID = cu.PACIENTE_ID
    INNER JOIN cuentas_pacientes_detlles fp ON cu.CUENTAS_PACIENTES_ID = fp.CUENTAS_PACIENTES_ID
    INNER JOIN formas_pago_pacientes pfpf ON cu.FORMA_PAGO_PAC_ID = pfpf.FORMA_PAGO_PAC_ID
    INNER JOIN formas_pago fpf ON pfpf.FORMA_PAGO_ID = fpf.FORMA_PAGO_ID
    WHERE p.PACIENTE_ID = PACIENTE_ID;

    SELECT res AS Resultado;
END :)
DELIMITER ;