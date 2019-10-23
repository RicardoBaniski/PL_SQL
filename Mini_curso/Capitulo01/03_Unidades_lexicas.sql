SET SERVEROUTPUT ON
DECLARE     -- seção declarativa (isto é um comentário)
  V_NOME VARCHAR2(50);  -- v_nome é um identificador
BEGIN
  V_NOME := 'FÁBIO'; -- string FÁBIO é um valor literal
  DBMS_OUTPUT.PUT_LINE('Meu nome é: ' || v_nome);  -- caractere ; é um delimitador que sinaliza final da instrução
END;
