SET SERVEROUTPUT ON

DECLARE
/* VARCHAR2 ajusta a quantidade de campos na memória de acordo com o valor recebido, 
limitado à quantifdade de caracteres definido na declaração; */
    v_nome        VARCHAR2(50);
    v_sobrenome   VARCHAR2(50);
BEGIN
    v_nome := 'RICARDO';
    v_sobrenome := 'BANISKI';
    dbms_output.put_line('Meu nome é: '
                         || v_nome
                         || ' '
                         || v_sobrenome);
END;