    
    /*
    DDL
    1. Create
    2. Alter
    3. Rename
    4. Truncate
    
    
    DML
    1. Select
    2. Insert : insert new row
        syntax 1: insert into table_name(col1, col2, col3....coln) values (val1, val2, val3....valn);
        Syntax 2: insert into table_name values (val1, val2, val3....valn);
                  rule:
        
    3.Update: do the changes in existing row
      syntax: update table_name
                  set col1 = val1, col2 = val2....., coln=valn
                  [where condtion];
        
    4.Delete: delete/remove the existing row
      syntax: delete [from] table_name
                  [where condtion];
    
    --CREATE table
    syntax: create table table_name
                 (col1 datatype [constraint], 
                 col2 datatype,
                 ---.......
                 );
                 
    Datatype in oracle:  https://docs.oracle.com/cd/A87860_01/doc/server.817/a76965/c10datyp.htm
    
    Number(p,s)  
    p= precision 1 to 38
    s = scale      -84 to 127
    
    number(7,2)  -> -99999.99 to +99999.99
    number(2,2) - >  -0.99 to 0.00
    
    
    varchar2(n) => variablle character, size 4000
    char(n)   =>size 2000
    
    Date
    
    CONSTRAINT
    ----------------
    1. PRIMARY KEY
    2. UNIQUE
    3. NOT NULL
    4. FOREIGN KEY
    5. CHECK
    */
    
    
    --CREATE TABLE DEPT without constraint
    create table dept
    (
    did number(4), 
    dname varchar2(10)
    );
    
    
    Drop table dept;
    
    
    desc dept;
    
    --insert  rows in dept
    insert into dept(did, dname) values (10,'IT');
    insert into dept values (20,'HR');
    insert into dept(dname, did) values ('ADMIN',30);
    insert into dept(did) values (40);
    insert into dept values (50,null);
    
    insert into dept values (100.6,'HR1');
    
    select * from dept;
    
    
    --create table with constriant
    create table dept
    ( 
    dept_id number(4) primary key,
    dept_name varchar2(20) not null
    );
    
    desc dept;
    
    insert into dept(dept_id, dept_name) values (10,'IT');
    insert into dept values (20,'IT');
    insert into dept values (100,'ADMIN');
    
    select * from dept;
    
    
    --emp(id, name, salary, did,email)
    create table emp
    (
    id number(4) primary key,
    name varchar2(20) not null,
    salary number(8,2) check(salary>0),
    did number references dept(dept_id),
    email varchar2(30) unique
    );
    
    insert into emp(id,name,salary,email, did) values (1,'Jack',1000,'jack@mail.com',10);
    insert into emp(id,name,salary,email, did) values (2,'Jack',1000,'jack1@mail.com',100);
    insert into emp(id,name,salary,email, did) values (3,'Jackie',2000,null,20);
    insert into emp(id,name,salary,email, did) values (4,'Jackie',2000,null,20);
    insert into emp(id,name,salary,email, did) values (5,'Jessica',1,null,20);
    
    select * from dept;
    select * from emp;
    
    update emp
    set salary = 100000
    where id=5;
    
    update emp
    set did=20;
    
    
    delete from emp
    where id in (4,5);
    
    
    
    
    
    
