CREATE DATABASE CollegeDB;

USE CollegeDB;

DELIMITER //

CREATE PROCEDURE DisplayNumbers()
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE result VARCHAR(100) DEFAULT '';

    WHILE i <= 10 DO
        SET result = CONCAT(result, i, ' ');
        SET i = i + 1;
    END WHILE;

    SELECT result AS Numbers;
END //

DELIMITER ;

CALL DisplayNumbers();
