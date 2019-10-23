SET SERVEROUTPUT ON
-- início do bloco OUTER
DECLARE     -- seção declarativa
    V_CONT NUMBER;  -- declaração de varíavel
BEGIN -- seção executável 
    -- o bloco abaixo está aninhado dentro do bloco pai
    BEGIN  -- início do bloco INNER
        SELECT  1 INTO V_CONT -- instrução SQL 
        FROM    HR.EMPLOYEES
        WHERE   ROWNUM =1;
    EXCEPTION  
        WHEN OTHERS THEN
        V_CONT:=0;
    END; -- término do bloco INNER
  
    IF V_CONT = 0 THEN -- instrução procedural
        DBMS_OUTPUT.PUT_LINE('Não existem funcionários cadastrados no sistema de RH');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Existem ' || to_char(V_CONT) || ' funcionários cadastrados no sistema de RH');
    END IF;      
EXCEPTION  -- seção de tratamento de exceção
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
-- término do bloco OUTER
