SET SERVEROUTPUT ON
-- in�cio do bloco OUTER
DECLARE     -- se��o declarativa
    V_CONT NUMBER;  -- declara��o de var�avel
BEGIN -- se��o execut�vel 
    -- o bloco abaixo est� aninhado dentro do bloco pai
    BEGIN  -- in�cio do bloco INNER
        SELECT  1 INTO V_CONT -- instru��o SQL 
        FROM    HR.EMPLOYEES
        WHERE   ROWNUM =1;
    EXCEPTION  
        WHEN OTHERS THEN
        V_CONT:=0;
    END; -- t�rmino do bloco INNER
  
    IF V_CONT = 0 THEN -- instru��o procedural
        DBMS_OUTPUT.PUT_LINE('N�o existem funcion�rios cadastrados no sistema de RH');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Existem ' || to_char(V_CONT) || ' funcion�rios cadastrados no sistema de RH');
    END IF;      
EXCEPTION  -- se��o de tratamento de exce��o
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
-- t�rmino do bloco OUTER
