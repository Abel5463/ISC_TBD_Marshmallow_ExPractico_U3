/*Cada vez que agregue un nuevo Paciente a la tabla pacientes, y genere el NSS, tome el ÚLTIMO 
    valor de la tabla CONSECUTIVOS, súmele 1 para generar el NSS, y después 
    inserte en la tabla CONSECUTIVOS el nuevo consecutivo. HÁGALO DESPUÉS de 
    insertar el registro en pacientes (no lo haga antes, Ya que puede ocurrir 
    que no se agregue el paciente por algún error).
*/
DELIMITER //
CREATE TRIGGER nuevo_paciente AFTER INSERT ON pacientes
FOR EACH ROW

BEGIN
	DECLARE aux INT;
            
    SELECT max(id) INTO aux FROM consecutivos;
    SET aux = aux + 1;	
	INSERT INTO consecutivos(id) VALUES (aux);
END//
DELIMITER ;