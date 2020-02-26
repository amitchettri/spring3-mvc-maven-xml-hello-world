/oracle/app/product/12.2.0/db_1/bin/sqlplus -s / as sysdba <<EOF
grant connect, resource to user1 identified by user1;
grant unlimited tablespace to user1;
conn user1/user1
show user
CREATE TABLE user1_customers ( customer_id number(10) NOT NULL, customer_name varchar2(50) NOT NULL, city varchar2(50));
CREATE TABLE user1_suppliers ( supplier_id number(10) NOT NULL, supplier_name varchar2(50) NOT NULL, city varchar2(50));
insert into user1_customers values (1, 'anil', 'shillong');
insert into user1_customers values (2, 'roshan', 'delhi');
insert into user1_customers values (3, 'vivek', 'bangalore');
insert into user1_suppliers values (1, 'arjun', 'nagaland');
insert into user1_suppliers values (2, 'atul', 'manipur');
insert into user1_suppliers values (3, 'james', 'mumbai');
insert into user1_suppliers values (4, 'lex', 'nagaland');
insert into user1_suppliers values (5, 'tom', 'manipur');
insert into user1_suppliers values (6, 'manisha', 'mumbai');
commit;
exit;
EOF

