DROP DATABASE IF EXISTS itp_proto;
CREATE DATABASE itp_proto;
use itp_proto;

CREATE TABLE kunde(
	id int,
	vorname VARCHAR(40),
	nachname VARCHAR(40),
	adresse VARCHAR(60),
	debitcard VARCHAR(11),
	cardcode CHAR(3),
	primary key (id)
);
CREATE TABLE artikel(
	id int,
	marke VARCHAR(20),
	einkaufp int,
	einkaufdatum date,
	tageskosten int,
	verfallzeity int,
	istSKI boolean,
	primary key (id)
);
drop table if exists abrechnung;
CREATE TABLE abrechnung(
	id int,
	ausgeborgtam DATE,
	ausgeborgtbis DATE,
	kid int,
	aid int,
	zurueckgegeben BOOLEAN,
	primary key (id),
	foreign key (kid) references kunde(id),
	foreign key (aid) references artikel(id)
);
ALTER TABLE abrechnung MODIFY id int(11) NOT NULL AUTO_INCREMENT;
