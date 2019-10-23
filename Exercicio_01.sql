SET SERVEROUTPUT ON

DECLARE
    v_nome        VARCHAR2(50);
    v_sobrenome   VARCHAR(50);
BEGIN
    v_nome := 'RICARDO';
    v_sobrenome := 'BANISKI';
    dbms_output.put_line('Meu nome é: '
                         || v_nome
                         || ' '
                         || v_sobrenome);
END;