IF SCHEMA_ID('ParkingServis') IS NOT NULL
	 DROP SCHEMA ParkingServis;
go
	CREATE SCHEMA ParkingServis; 
go

IF OBJECT_ID ('ParkingServis.PARKING_SLUZBA','U') IS NOT NULL
	DROP TABLE ParkingServis.PARKING_SLUZBA;
GO

IF OBJECT_ID ('ParkingServis.KONTROLOR','U') IS NOT NULL
	DROP TABLE ParkingServis.KONTROLOR;
GO

IF OBJECT_ID ('ParkingServis.PARKIRALISTE','U') IS NOT NULL
	DROP TABLE ParkingServis.PARKIRALISTE;
GO

IF OBJECT_ID ('ParkingServis.KONTROLISE','U') IS NOT NULL
	DROP TABLE ParkingServis.KONTROLISE;
GO

IF OBJECT_ID ('ParkingServis.FIZICKO_LICE','U') IS NOT NULL
	DROP TABLE ParkingServis.FIZICKO_LICE;
GO

IF OBJECT_ID ('ParkingServis.PRAVNO_LICE','U') IS NOT NULL
	DROP TABLE ParkingServis.PRAVNO_LICE;
GO

IF OBJECT_ID ('ParkingServis.PREDUZETNIK','U') IS NOT NULL
	DROP TABLE ParkingServis.PREDUZETNIK;
GO

IF OBJECT_ID ('ParkingServis.KLIJENT','U') IS NOT NULL
	DROP TABLE ParkingServis.KLIJENT;
GO

IF OBJECT_ID ('ParkingServis.VOZILO','U') IS NOT NULL
	DROP TABLE ParkingServis.VOZILO;
GO

IF OBJECT_ID ('ParkingServis.PARKIRANO_NA','U') IS NOT NULL
	DROP TABLE ParkingServis.PARKIRANO_NA;
GO

IF OBJECT_ID ('ParkingServis.VRSTA_KAZNE','U') IS NOT NULL
	DROP TABLE ParkingServis.VRSTA_KAZNE;
GO

IF OBJECT_ID ('ParkingServis.KAZNA','U') IS NOT NULL
	DROP TABLE ParkingServis.KAZNA;
GO

CREATE TABLE ParkingServis.PARKING_SLUZBA
(
	sluzba_id int not null, 
	br_zap int, 
	br_parkiralista int, 
	grad varchar(50) not null,
	CONSTRAINT PK_PARKING_SLUZBA PRIMARY KEY (sluzba_id)
);

CREATE TABLE ParkingServis.KONTROLOR
(
	kontrolor_id int not null, 
	zap_ime varchar(50) not null, 
	zap_prz varchar(50) not null, 
	zap_jmbg varchar(20) not null, 
	zap_adresa varchar(100) not null, 
	zap_tel varchar(20) not null,
	struc_spr varchar(100) not null, 
	dat_zaposlenja date not null, 
	sluzba_id int not null,
	CONSTRAINT PK_KONTROLOR PRIMARY KEY (kontrolor_id),
	CONSTRAINT FK_KONTROLOS_PARKING_SLUZBA FOREIGN KEY (sluzba_id) REFERENCES ParkingServis.PARKING_SLUZBA (sluzba_id)
);

CREATE TABLE ParkingServis.PARKIRALISTE
(
	park_id int not null,
	br_mesta int,
	dnevna_karta bit,
	ulica varchar(100) not null,
	zona varchar(200) not null,
	sluzba_id int not null,
	CONSTRAINT PK_PARKIRALISTE PRIMARY KEY (park_id,sluzba_id),
	CONSTRAINT FK_PARKIRALISTE_PARKING_SLUZBA FOREIGN KEY (sluzba_id) REFERENCES ParkingServis.PARKING_SLUZBA (sluzba_id),
	CONSTRAINT CHK_PARKIRALISTE_zona CHECK(zona in('ljubicasta', 'crvena', 'zuta', 'zelena', 'plava'))
);

CREATE TABLE ParkingServis.KONTROLISE
(
	kontrolor_id int not null, 
	park_id int not null, 
	sluzba_id int not null,
	CONSTRAINT PK_KONTROLISE PRIMARY KEY (kontrolor_id, park_id, sluzba_id),
	CONSTRAINT FK_KONTROLISE_KONTROLOR FOREIGN KEY (kontrolor_id) REFERENCES ParkingServis.KONTROLOR (kontrolor_id),
	CONSTRAINT FK_KONTROLISE_PARKING_SLUZBA FOREIGN KEY (sluzba_id) REFERENCES ParkingServis.PARKING_SLUZBA (sluzba_id),
	CONSTRAINT FK_KONTROLISE_PARKIRALISTE FOREIGN KEY (park_id,sluzba_id) REFERENCES  ParkingServis.PARKIRALISTE (park_id,sluzba_id)
);

CREATE TABLE ParkingServis.FIZICKO_LICE
(
	fizickol_id int not null, 
	fl_ime varchar(50) not null, 
	fl_prz varchar(50) not null,
	CONSTRAINT PK_FIZICKO_LICE PRIMARY KEY (fizickol_id)
);

CREATE TABLE ParkingServis.PRAVNO_LICE
(
	pravnol_id int not null, 
	PIB int not null, 
	pravnol_naziv varchar(100) not null,
	CONSTRAINT PK_PRAVNO_LICE PRIMARY KEY (pravnol_id)
);

CREATE TABLE ParkingServis.PREDUZETNIK
(
	preduzetnik_id int not null, 
	pred_naziv varchar(100) not null,
	CONSTRAINT PK_PREDUZETNIK PRIMARY KEY (preduzetnik_id)
);

CREATE TABLE ParkingServis.KLIJENT
(
	klijent_id int not null, 
	email varchar(50), 
	klij_tel varchar(50) not null, 
	ulica varchar(100) not null, 
	br_ulice varchar(10) not null, 
	fizickol_id int, 
	pravnol_id int, 
	preduzetnik_id int,
	CONSTRAINT PK_KLIJENT PRIMARY KEY (klijent_id),
	CONSTRAINT FK_KLIJENT_FIZICKO_LICE FOREIGN KEY (fizickol_id) REFERENCES ParkingServis.FIZICKO_LICE (fizickol_id),
	CONSTRAINT FK_KLIJENT_FPRAVNO_LICE FOREIGN KEY (pravnol_id) REFERENCES ParkingServis.PRAVNO_LICE (pravnol_id),
	CONSTRAINT FK_KLIJENT_PREDUZETNIK FOREIGN KEY (preduzetnik_id) REFERENCES ParkingServis.PREDUZETNIK (preduzetnik_id),
);

CREATE TABLE ParkingServis.VOZILO
(
	reg_br int not null, 
	klijent_id int not null,
	CONSTRAINT PK_VOZILO PRIMARY KEY (reg_br),
	CONSTRAINT FK_VOZILO_KLIJENT FOREIGN KEY (klijent_id) REFERENCES ParkingServis.KLIJENT (klijent_id)
);

CREATE TABLE ParkingServis.PARKIRANO_NA
(
	reg_br int not null, 
	park_id int not null, 
	sluzba_id int not null, 
	datum_izd date not null CONSTRAINT DFT_datum_izd DEFAULT(GETDATE()), 
	vreme_izd time not null, 
	kontrolor_id int,
	CONSTRAINT PK_PARKIRANO_NA PRIMARY KEY (reg_br, park_id, sluzba_id),
	CONSTRAINT FK_PARKIRANO_NA_VOZILO FOREIGN KEY (reg_br) REFERENCES ParkingServis.VOZILO (reg_br),
	CONSTRAINT FK_PARKIRANO_NA_PARKING_SLUZBA FOREIGN KEY (sluzba_id) REFERENCES ParkingServis.PARKING_SLUZBA (sluzba_id),
	CONSTRAINT FK_PARKIRANO_NA_PARKIRALISTE FOREIGN KEY (park_id,sluzba_id) REFERENCES ParkingServis.PARKIRALISTE (park_id,sluzba_id),
	CONSTRAINT FK_PARKIRANO_NA_KONTROLOR FOREIGN KEY (kontrolor_id) REFERENCES ParkingServis.KONTROLOR (kontrolor_id),
);

CREATE TABLE ParkingServis.VRSTA_KAZNE
(
	vrsta_id int not null, 
	vrsta_naziv varchar(40),
	CONSTRAINT PK_VRSTA_KAZNE PRIMARY KEY (vrsta_id)
);

CREATE TABLE ParkingServis.KAZNA
(
	serijski_br int not null, 
	vrsta_id int not null, 
	reg_br int not null,
	CONSTRAINT PK_KAZNA PRIMARY KEY (serijski_br),
	CONSTRAINT FK_KAZNA_VRSTA_KAZNE FOREIGN KEY (vrsta_id) REFERENCES ParkingServis.VRSTA_KAZNE (vrsta_id),
	CONSTRAINT FK_KAZNA_VOZILO FOREIGN KEY (reg_br) REFERENCES ParkingServis.VOZILO (reg_br)
);

ALTER TABLE ParkingServis.PARKIRALISTE
	ADD vrsta_park varchar(200);
GO

ALTER TABLE ParkingServis.PARKIRALISTE
	ADD CONSTRAINT CHK_PARKIRALISTE_vrsta_park CHECK (vrsta_park in('otvoreno','zatvoreno','privremeno'));
GO

ALTER TABLE ParkingServis.PARKING_SLUZBA
	ADD naziv_pred varchar(300) not null;
GO

ALTER TABLE ParkingServis.VRSTA_KAZNE
	ADD za_uplatu int not null;
GO

ALTER TABLE ParkingServis.PREDUZETNIK
	ADD mesto varchar(70) not null;
GO

ALTER TABLE ParkingServis.FIZICKO_LICE
	ADD fl_mesto varchar(50) not null;
GO

ALTER TABLE ParkingServis.FIZICKO_LICE
	DROP COLUMN fl_mesto;
GO

ALTER TABLE ParkingServis.PREDUZETNIK
	DROP COLUMN mesto;
GO

ALTER TABLE ParkingServis.KLIJENT
	ADD mesto varchar(70) not null;
GO

ALTER TABLE ParkingServis.VOZILO
	ADD reg_oznaka varchar(11) not null;
GO

ALTER TABLE ParkingServis.PARKIRANO_NA
	ADD datum_park date null;
GO

ALTER TABLE ParkingServis.PARKIRANO_NA
	ADD vreme_pocetka time null;
GO

ALTER TABLE ParkingServis.PARKIRANO_NA
	ADD vreme_kraja time null;
GO

ALTER TABLE ParkingServis.PARKIRANO_NA
	ADD CONSTRAINT CHK_vreme_pocetak_kraj CHECK(vreme_pocetka < vreme_kraja);
GO

ALTER TABLE ParkingServis.PARKIRALISTE
	ADD trajanje_park int null;
GO

ALTER TABLE ParkingServis.PARKIRANO_NA
	ALTER COLUMN datum_izd date null;
go

ALTER TABLE ParkingServis.PARKIRANO_NA
	ALTER COLUMN vreme_izd time null;
go