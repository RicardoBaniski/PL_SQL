BEGIN
    UPDATE  HR.EMPLOYEES 
    SET     SALARY = 15000
    WHERE   FIRST_NAME = 'Fábio'
    AND     LAST_NAME = 'Prado';
    
    COMMIT;
END;