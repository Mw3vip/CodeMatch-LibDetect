create database androidlib;
create table androidlib.mthdtbl (bcode binary(20), ar binary(20), nlr binary(20), spr binary(20), fuzzySPR text, fHash1 binary(20), fHash2 binary(20), mlen int, msig text, primary key(bcode));
create table androidlib.classtbl (uniqid binary(20), fqn text, loc int, mcount int, primary key(uniqid));
create table androidlib.classXmthd (uniqid_cl binary(20), bcode_id binary(20), foreign key(uniqid_cl) references androidlib.classtbl(uniqid), foreign key(bcode_id) references androidlib.mthdtbl(bcode));
create table androidlib.jarXclass (id int auto_increment,jarPath text, uniqid_cl binary(20), foreign key(uniqid_cl) references androidlib.classtbl(uniqid), primary key(id));
create index aar on androidlib.mthdtbl (ar) using btree;
create index nlr on androidlib.mthdtbl (nlr) using btree;
create index spr on androidlib.mthdtbl (spr) using btree;
create index fHash1 on androidlib.mthdtbl (fHash1) using btree;
create index fHash2 on androidlib.mthdtbl (fHash2) using btree;
