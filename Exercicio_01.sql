SET SERVEROUTPUT ON

DECLARE
/* VARCHAR2 ajusta a quantidade de campos na mem�ria de acordo com o valor recebido, 
limitado � quantifdade de caracteres definido na declara��o; */
    v_nome        VARCHAR2(50);
    v_sobrenome   VARCHAR2(50);
BEGIN
    v_nome := 'RICARDO';
    v_sobrenome := 'BANISKI';
    dbms_output.put_line('Meu nome �: '
                         || v_nome
                         || ' '
                         || v_sobrenome);
END;