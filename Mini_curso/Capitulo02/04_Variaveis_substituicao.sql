SET SERVEROUTPUT ON
SET DEFINE ON -- SET DEFINE ON já é padrão no ambiente de execução do SQL Developer
DECLARE     -- seção declarativa
  c_nome CONSTANT VARCHAR2(50):='&nome';  -- declaração de variável recebendo valor de substituição
BEGIN -- seção executável  
  DBMS_OUTPUT.PUT_LINE('Meu nome é: ' || C_NOME);  
END;