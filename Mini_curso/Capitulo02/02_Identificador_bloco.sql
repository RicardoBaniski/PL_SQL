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
        -- atribuindo p/ a vari�vel do bloco pai o valor da vari�vel do bloco filho
    EXCEPTION  
       WHEN OTHERS THEN
            OUTER.V_CONT:=0;            
    END;
    --- fim do bloco filho
  
    IF V_CONT = 0 THEN 
        DBMS_OUTPUT.PUT_LINE('N�o existem funcion�rios cadastrados no sistema de RH');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Existem ' || to_char(outer.V_CONT) || ' funcion�rios cadastrados no sistema de RH');
    END IF;  
EXCEPTION  
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
