SET SERVEROUTPUT ON

DECLARE
-- Mesmo após ser inicializada com valor definido, a variável pode ser alterada;
    v_nome        VARCHAR2(50) NOT NULL := 'RICARDO';
    v_sobrenome   VARCHAR(50) NOT NULL := 'BANISKI';
BEGIN
    V_NOME := 'ROBERTO';
    V_SOBRENOME := 'COSTA';
    dbms_output.put_line('Meu nome é: '
                         || v_nome
                         || ' '
                         || v_sobrenome);
END;