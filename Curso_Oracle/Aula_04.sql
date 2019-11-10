declare
    v_percentual number(3,2) := 1.30;
    v_depto varchar2(30) := 'adm';
begin 
    update  funcionarios
    set salario = salario * v_percentual
    where depto=v_depto;
end;

--update funcionarios set salario = 1000

--select * from funcionarios;