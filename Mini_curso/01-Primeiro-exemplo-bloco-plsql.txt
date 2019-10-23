SET SERVEROUTPUT ON
DECLARE     -- seção de declarações
    V_CONT NUMBER;  -- declaração de varíavel
BEGIN       -- seção executável
    SELECT  COUNT(1) INTO V_CONT 
    FROM    HR.EMPLOYEES; -- instrução SQL 
  
    IF V_CONT = 0 THEN -- instrução procedural
        DBMS_OUTPUT.PUT_LINE('Não existem funcionários cadastrados no sistema de RH');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Existem ' || to_char(V_CONT) || ' funcionários cadastrados no sistema de RH');
    END IF;  
EXCEPTION  -- seção de tratamento de exceção
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
