SET SERVEROUTPUT ON
DECLARE     -- se��o declarativa
  c_nome CONSTANT VARCHAR2(50):='F�BIO';  -- declara��o de var�avel
BEGIN -- se��o execut�vel  
  DBMS_OUTPUT.PUT_LINE('Meu nome �:' || c_nome);  
END;
