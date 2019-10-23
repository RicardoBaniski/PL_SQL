SET SERVEROUTPUT ON
DECLARE    -- seção declarativa
    v_nome VARCHAR2(50);  -- declaração de varíavel
BEGIN -- seção executável
    V_NOME := 'FÁBIO'; -- ATRIBUIÇÃO DE VALOR PARA UMA VARIÁVEL
    DBMS_OUTPUT.PUT_LINE('Meu nome é: ' || v_nome);  
END;
