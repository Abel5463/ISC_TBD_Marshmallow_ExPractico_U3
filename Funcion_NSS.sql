DELIMITER //

CREATE FUNCTION generar_NSS(fecha_nac DATE)
RETURNS VARCHAR(15) deterministic
BEGIN
	DECLARE aux int;
    DECLARE aux2 int;       
	DECLARE aleatorio int;
	DECLARE num_al varchar(2); /*número_aleatorio*/
    DECLARE inscripcion varchar(2);
    DECLARE año VARCHAR(2);
    DECLARE consecutivo varchar(4);
    DECLARE suma int; 
    DECLARE NSS VARCHAR(15);
    
    /*Número de oficina donde se inscribió el trabajador. Generarla aleatoria (0 → 100), en 
	caso de resultar un número de un solo dígito, agregar un cero: 9 → 09*/
    
    SET aleatorio = ROUND((RAND() * (99)));
    IF aleatorio < 10 THEN
		SET num_al = CONCAT('0',aleatorio);
	ELSE
        SET num_al = CAST(aleatorio AS CHAR(2));
    END IF;
    
    /*Año en que se inscribió el trabajador. Genere un valor aleatorio que vaya entre la 
	fecha de nacimiento del usuario más 15 años (ejemplo, si nació en 1985 → 1985 + 15 = 
	2000) y la fecha actual.*/  
    
    SET aux = YEAR(fecha_nac) + 15;    
    SET inscripcion = RIGHT(CAST(ROUND((RAND() * (2023 - aux)) + aux, 0) AS CHAR(4)),2);
    
    /*Año de nacimiento*/
    SET año = RIGHT(YEAR(fecha_nac),2);
    
	/*Número asignado por el IMSS. Para generarlo, crear una tabla CONSECUTIVOS, 
	con una sola columna “CONSECUTIVO int”. Agregue un registro, e inserte en 
	CONSECUTIVO, un valor de 1000 (valor de inicio). */
    
		/*create table consecutivos(id int auto_increment key);
		insert into consecutivos(id) values(1000);*/
    
    /*Cada vez que agregue un nuevo Paciente a la tabla pacientes, y genere el NSS , tome el ÚLTIMO 
    valor de la tabla CONSECUTIVOS, súmele 1 para generar el NSS, y después 
    inserte en la tabla CONSECUTIVOS el nuevo consecutivo. HÁGALO DESPUÉS de 
    insertar el registro en pacientes (no lo haga antes, Ya que puede ocurrir 
    que no se agregue el paciente por algún error).
	*/
    
    SELECT MAX(id) INTO aux FROM consecutivos;
    SET aux = aux + 1;
	SET consecutivo = CAST(aux AS CHAR(4));
    
    /*: Dígito verificador: Generar función para calcularlo:
	• De los dígitos generados al momento para el NSS, multiplicar cada número por la 
	siguiente secuencia. Sume entre si los dígitos de aquellos valores que son 
	mayores o iguales a 10 (18 → 1 + 8 = 9):
	NSS 9 2 9 8 8 0 8 4 4 9
	x 1 2 1 2 1 2 1 2 1 2
	Resultado 9 4 9 16 8 0 8 8 4 18
	Sumando 
	doble 
	dígito
	9 4 9 7 8 0 8 8 4 9
	• Sume los valores obtenidos: 9 + 4 + 9 + 7 + 8 + 0 + 8 + 8 + 4 + 9 = 66
	• Calcule lo que falta para la siguiente decena: 66 → 70: 70 – 66 = 4
	• 4 es el dígito verificador.
    */
    
	SET NSS = CONCAT(num_al, inscripcion, año, consecutivo);
    
    /*aux sirve para decir que caracter del NSS se va a usar*/
	SET aux = 1;
    SET suma = 0;
    
    /*Este ciclo es para recorrer el NSS e ir multiplicando sus digitos*/
    recorrer: LOOP
    
        /*Multiplicados por 1*/
        
        /*aux2 sirve para guardar el caracter de la posición aux y convertirlo de char a int*/
        /*SUBSTRING(variable, posicion, cantidad de letras)*/
        /*UNSINGNED permite solo números positivos*/
        SET aux2 = CONVERT(SUBSTRING(NSS, aux, 1), UNSIGNED);
        SET suma = suma + aux2;
        SET aux = aux + 1;
        
        /*Multiplicados por 2*/
        
        SET aux2 = CONVERT(SUBSTRING(NSS, aux, 1), UNSIGNED);
        SET aux2 = aux2 * 2;
        /*Condición para sumar los digitos del número si el resultado es de 2 dígitos*/
        IF aux2 > 9 THEN
			SET aux2 = (aux2 - 10) + 1;
        END IF;
        SET suma = suma + aux2;
        SET aux = aux + 1;
        
        /*Condición de salida del loop */
        IF aux > 10 THEN
			LEAVE recorrer;
		END IF;
    END LOOP recorrer;
    
    /*Calcule lo que falta para la siguiente decena: 66 → 70: 70 – 66 = 4
	• 4 es el dígito verificador.*/
    
    SET aux = suma % 10;
    IF aux = 0 THEN
		SET aux2 = 0;
	ELSE
		SET aux2 = 10 - aux;
    END IF;
    
    
    SET NSS = CONCAT(NSS, aux2);
	
	RETURN NSS;
END //