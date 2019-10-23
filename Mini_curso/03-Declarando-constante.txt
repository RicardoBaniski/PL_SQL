SET SERVEROUTPUT ON
DECLARE     -- seção declarativa
  c_nome CONSTANT VARCHAR2(50):='FÁBIO';  -- declaração de varíavel
BEGIN -- seção executável  
  DBMS_OUTPUT.PUT_LINE('Meu nome é:' || c_nome);  
END;
