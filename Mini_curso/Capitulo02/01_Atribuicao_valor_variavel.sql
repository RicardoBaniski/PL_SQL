SET SERVEROUTPUT ON
DECLARE    -- se��o declarativa
    v_nome VARCHAR2(50);  -- declara��o de var�avel
BEGIN -- se��o execut�vel
    V_NOME := 'F�BIO'; -- ATRIBUI��O DE VALOR PARA UMA VARI�VEL
    DBMS_OUTPUT.PUT_LINE('Meu nome �: ' || v_nome);  
END;
