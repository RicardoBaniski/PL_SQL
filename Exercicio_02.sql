SET SERVEROUTPUT ON

DECLARE
-- Quando utilizado o NOT NULL a variável precisa ser inicializada:
    v_nome        VARCHAR2(50) NOT NULL := 0;
    v_sobrenome   VARCHAR(50) NOT NULL := 0;
BEGIN
    V_NOME := 'RICARDO';
    V_SOBRENOME := 'BANISKI';
    dbms_output.put_line('Meu nome é: '
                         || v_nome
                         || ' '
                         || v_sobrenome);
END;