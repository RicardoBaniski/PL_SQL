/*
CREATE TABLE funcionarios (
    mat       NUMBER(6) NOT NULL,
    nome      VARCHAR2(30) NOT NULL,
    depto     VARCHAR2(30) NOT NULL,
    salario   NUMBER(10, 2)
);

CREATE SEQUENCE mat_seq 
MINVALUE 1 
START WITH 1 
INCREMENT BY 1 
CACHE 20;

insert into funcionarios values(mat_seq.nextval,'ricardo','adm',1000.00);
insert into funcionarios values(mat_seq.nextval,'fernando','cre',1000.00);
insert into funcionarios values(mat_seq.nextval,'emily','cre',1000.00);
insert into funcionarios values(mat_seq.nextval,'eduardo','adm',1000.00);
insert into funcionarios values(mat_seq.nextval,'claudio','adm',1000.00);
insert into funcionarios values(mat_seq.nextval,'joao','cre',1000.00);
insert into funcionarios values(mat_seq.nextval,'viviane','cpg',1000.00);
insert into funcionarios values(mat_seq.nextval,'amanda','cre',1000.00);
insert into funcionarios values(mat_seq.nextval,'roberto','adm',1000.00);
insert into funcionarios values(mat_seq.nextval,'luciana','cpg',1000.00);
insert into funcionarios values(mat_seq.nextval,'ricardo','cpg',1000.00);
insert into funcionarios values(mat_seq.nextval,'saleti','adm',1000.00);
insert into funcionarios values(mat_seq.nextval,'denise','adm',1000.00);
insert into funcionarios values(mat_seq.nextval,'marcos','cre',1000.00);
insert into funcionarios values(mat_seq.nextval,'carlos','cre',1000.00);
insert into funcionarios values(mat_seq.nextval,'paulo','adm',1000.00);
insert into funcionarios values(mat_seq.nextval,'patricia','cpg',1000.00);
insert into funcionarios values(mat_seq.nextval,'eduarda','cpg',1000.00);
insert into funcionarios values(mat_seq.nextval,'marcelo','cpg',1000.00);
insert into funcionarios values(mat_seq.nextval,'cesar','cpg',1000.00);
insert into funcionarios values(mat_seq.nextval,'daniele','adm',1000.00);
insert into funcionarios values(mat_seq.nextval,'daniely','adm',1000.00);
insert into funcionarios values(mat_seq.nextval,'lidia','cre',1000.00);
insert into funcionarios values(mat_seq.nextval,'carolina','adm',1000.00);
*/

BEGIN
    UPDATE 
        funcionarios
    SET
        salario = salario * 1.30
    WHERE
        depto = 'adm';
END;