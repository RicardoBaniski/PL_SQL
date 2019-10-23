SET SERVEROUTPUT ON
<<OUTER>> -- identificador do bloco pai (bloco externo)
DECLARE    
    V_CONT NUMBER;     
BEGIN
    -- inicio do bloco filho
    <<inner>> 
    DECLARE
        V_CONT NUMBER;  
    BEGIN 
        SELECT  1 INTO inner.V_CONT 
        FROM    HR.EMPLOYEES
        WHERE   ROWNUM =1;
        
        OUTER.V_CONT := inner.V_CONT;
        -- atribuindo p/ a variável do bloco pai o valor da variável do bloco filho
    EXCEPTION  
       WHEN OTHERS THEN
            OUTER.V_CONT:=0;            
    END;
    --- fim do bloco filho
  
    IF V_CONT = 0 THEN 
        DBMS_OUTPUT.PUT_LINE('Não existem funcionários cadastrados no sistema de RH');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Existem ' || to_char(outer.V_CONT) || ' funcionários cadastrados no sistema de RH');
    END IF;  
EXCEPTION  
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
