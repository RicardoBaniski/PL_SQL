BEGIN
    UPDATE  HR.EMPLOYEES 
    SET     SALARY = 15000
    WHERE   FIRST_NAME = 'F�bio'
    AND     LAST_NAME = 'Prado';
    
    COMMIT;
END;