--parking sluzba
INSERT INTO ParkingServis.PARKING_SLUZBA (sluzba_id,br_zap,br_parkiralista,grad,naziv_pred)
VALUES (1,1526,null,'Beograd','Parking Servis');
GO

INSERT INTO ParkingServis.PARKING_SLUZBA (sluzba_id,br_zap,br_parkiralista,grad,naziv_pred)
VALUES (2,344,737,'Novi Sad','JKP Parking servis Novi Sad');
GO

INSERT INTO ParkingServis.PARKING_SLUZBA (sluzba_id,br_zap,br_parkiralista,grad,naziv_pred)
VALUES (3,187,3,'Nis','JKP Parking servis Nis');
GO

INSERT INTO ParkingServis.PARKING_SLUZBA (sluzba_id,br_zap,br_parkiralista,grad,naziv_pred)
VALUES (4,487,null,'Kikinda','JP Kikinda');
GO

INSERT INTO ParkingServis.PARKING_SLUZBA (sluzba_id,br_zap,br_parkiralista,grad,naziv_pred)
VALUES (5,70,25,'Subotica','JKP Parking Subotica');
GO

--parkiralista
INSERT INTO ParkingServis.PARKIRALISTE (park_id,br_mesta,dnevna_karta,ulica,zona,sluzba_id,vrsta_park)
VALUES (1,90,0,'Trg Republike','crvena',2,'otvoreno');
GO

INSERT INTO ParkingServis.PARKIRALISTE (park_id,br_mesta,dnevna_karta,ulica,zona,sluzba_id,vrsta_park)
VALUES (2,85,0,'Devet Jugovica','plava',2,'otvoreno');
GO

INSERT INTO ParkingServis.PARKIRALISTE (park_id,br_mesta,dnevna_karta,ulica,zona,sluzba_id,vrsta_park)
VALUES (3,140,1,'Zeleznicka stanica (plato)','plava',2,'otvoreno');
GO

INSERT INTO ParkingServis.PARKIRALISTE (park_id,br_mesta,dnevna_karta,ulica,zona,sluzba_id,vrsta_park)
VALUES (4,361,1,'Milentija Popovica','plava',1,'otvoreno');
GO

INSERT INTO ParkingServis.PARKIRALISTE (park_id,br_mesta,dnevna_karta,ulica,zona,sluzba_id,vrsta_park)
VALUES (5,220,0,'Carice Milice','ljubicasta',1,'otvoreno');
GO

INSERT INTO ParkingServis.PARKIRALISTE (park_id,br_mesta,dnevna_karta,ulica,zona,sluzba_id,vrsta_park)
VALUES (6,110,0,'Krusedolska','zelena',1,'otvoreno');
GO

INSERT INTO ParkingServis.PARKIRALISTE (park_id,br_mesta,dnevna_karta,ulica,zona,sluzba_id,vrsta_park)
VALUES (7,112,1,'Sindjelicev trg','crvena',3,'zatvoreno');
GO

INSERT INTO ParkingServis.PARKIRALISTE (park_id,br_mesta,dnevna_karta,ulica,zona,sluzba_id,vrsta_park)
VALUES (8,63,1,'Cair','plava',3,'zatvoreno');
GO

INSERT INTO ParkingServis.PARKIRALISTE (park_id,br_mesta,dnevna_karta,ulica,zona,sluzba_id,vrsta_park)
VALUES (9,235,0,'Svetozara Miletica','crvena',4,'otvoreno');
GO

INSERT INTO ParkingServis.PARKIRALISTE (park_id,br_mesta,dnevna_karta,ulica,zona,sluzba_id,vrsta_park)
VALUES (10,80,0,'Vojvode Misica','plava',4,'otvoreno');
GO

INSERT INTO ParkingServis.PARKIRALISTE (park_id,br_mesta,dnevna_karta,ulica,zona,sluzba_id,vrsta_park)
VALUES (11,68,0,'Hipodromska','zelena',5,'otvoreno');
GO

INSERT INTO ParkingServis.PARKIRALISTE (park_id,br_mesta,dnevna_karta,ulica,zona,sluzba_id,vrsta_park)
VALUES (12,70,1,'Pavla Stosa','plava',5,'otvoreno');
GO

--kontrolor
INSERT INTO ParkingServis.KONTROLOR (kontrolor_id,zap_ime,zap_prz,zap_jmbg,zap_adresa,zap_tel,struc_spr,dat_zaposlenja,sluzba_id)
VALUES (1,'Matija','Savic','0203974402052','Zeleznicka 8','0615558946','srednja','2015-10-10',1);
GO

INSERT INTO ParkingServis.KONTROLOR (kontrolor_id,zap_ime,zap_prz,zap_jmbg,zap_adresa,zap_tel,struc_spr,dat_zaposlenja,sluzba_id)
VALUES (2,'Petar','Miletic','1212980475684','Partizanska 7','0649987561','srednja','2016-04-19',1);
GO

INSERT INTO ParkingServis.KONTROLOR (kontrolor_id,zap_ime,zap_prz,zap_jmbg,zap_adresa,zap_tel,struc_spr,dat_zaposlenja,sluzba_id)
VALUES (3,'Miroslav','Mirkovic','1011989745261','Fruskogorska 11','0600334789','srednja','2013-04-01',2);
GO

INSERT INTO ParkingServis.KONTROLOR (kontrolor_id,zap_ime,zap_prz,zap_jmbg,zap_adresa,zap_tel,struc_spr,dat_zaposlenja,sluzba_id)
VALUES (4,'Aleksandra','Savic','1111990824579','Njegoseva 4a','0623565869','srednja','2012-10-01',2);
GO

INSERT INTO ParkingServis.KONTROLOR (kontrolor_id,zap_ime,zap_prz,zap_jmbg,zap_adresa,zap_tel,struc_spr,dat_zaposlenja,sluzba_id)
VALUES (5,'Tijana','Miletic','1010991872469','Ardijska 7','0601448697','srednja','2016-09-01',3);
GO

INSERT INTO ParkingServis.KONTROLOR (kontrolor_id,zap_ime,zap_prz,zap_jmbg,zap_adresa,zap_tel,struc_spr,dat_zaposlenja,sluzba_id)
VALUES (6,'Andrej','Todorov','15029994479512','Banjska 1','0601447895','srednja','2014-02-01',3);
GO

INSERT INTO ParkingServis.KONTROLOR (kontrolor_id,zap_ime,zap_prz,zap_jmbg,zap_adresa,zap_tel,struc_spr,dat_zaposlenja,sluzba_id)
VALUES (7,'Sara','Mijic','1403994846513','Nikole Tesle 2','060125798','srednja','2017-10-01',4);
GO

INSERT INTO ParkingServis.KONTROLOR (kontrolor_id,zap_ime,zap_prz,zap_jmbg,zap_adresa,zap_tel,struc_spr,dat_zaposlenja,sluzba_id)
VALUES (8,'Stefan','Predic','1508990852645','Moravska 14','0602115849','srednja','2016-01-01',4);
GO

INSERT INTO ParkingServis.KONTROLOR (kontrolor_id,zap_ime,zap_prz,zap_jmbg,zap_adresa,zap_tel,struc_spr,dat_zaposlenja,sluzba_id)
VALUES (9,'Ana','Savic','1406983469825','Lasla Gala 5','0643358912','srednja','2018-08-01',5);
GO

INSERT INTO ParkingServis.KONTROLOR (kontrolor_id,zap_ime,zap_prz,zap_jmbg,zap_adresa,zap_tel,struc_spr,dat_zaposlenja,sluzba_id)
VALUES (10,'Nikola','Mirkov','2510984526498','Maglajska 17','0620779458','srednja','2019-06-01',5);
GO

--kontrolise
INSERT INTO ParkingServis.KONTROLISE (kontrolor_id,park_id,sluzba_id)
VALUES (3,1,2);
GO

INSERT INTO ParkingServis.KONTROLISE (kontrolor_id,park_id,sluzba_id)
VALUES (3,2,2);
GO

INSERT INTO ParkingServis.KONTROLISE (kontrolor_id,park_id,sluzba_id)
VALUES (4,3,2);
GO

INSERT INTO ParkingServis.KONTROLISE (kontrolor_id,park_id,sluzba_id)
VALUES (1,5,1);
GO

INSERT INTO ParkingServis.KONTROLISE (kontrolor_id,park_id,sluzba_id)
VALUES (2,4,1);
GO

INSERT INTO ParkingServis.KONTROLISE (kontrolor_id,park_id,sluzba_id)
VALUES (2,6,1);
GO

INSERT INTO ParkingServis.KONTROLISE (kontrolor_id,park_id,sluzba_id)
VALUES (5,7,3);
GO

INSERT INTO ParkingServis.KONTROLISE (kontrolor_id,park_id,sluzba_id)
VALUES (6,8,3);
GO

INSERT INTO ParkingServis.KONTROLISE (kontrolor_id,park_id,sluzba_id)
VALUES (7,10,4);
GO

INSERT INTO ParkingServis.KONTROLISE (kontrolor_id,park_id,sluzba_id)
VALUES (8,9,4);
GO

INSERT INTO ParkingServis.KONTROLISE (kontrolor_id,park_id,sluzba_id)
VALUES (9,11,5);
GO

INSERT INTO ParkingServis.KONTROLISE (kontrolor_id,park_id,sluzba_id)
VALUES (10,12,5);
GO

--vrsta kazne
INSERT INTO ParkingServis.VRSTA_KAZNE (vrsta_id, vrsta_naziv, za_uplatu)
VALUES (1,'Nepropisno parkiranje',5000);
GO

INSERT INTO ParkingServis.VRSTA_KAZNE (vrsta_id, vrsta_naziv, za_uplatu)
VALUES (2,'Ometa javni prevoz',10000);
GO

INSERT INTO ParkingServis.VRSTA_KAZNE (vrsta_id, vrsta_naziv, za_uplatu)
VALUES (3,'Zaustavljanje u zutoj traci',25000);
GO

INSERT INTO ParkingServis.VRSTA_KAZNE (vrsta_id, vrsta_naziv, za_uplatu)
VALUES (4,'Na zelenoj povrsina',15000);
GO

INSERT INTO ParkingServis.VRSTA_KAZNE (vrsta_id, vrsta_naziv, za_uplatu)
VALUES (5,'Ometa sinska vozila',25000);
GO

INSERT INTO ParkingServis.VRSTA_KAZNE (vrsta_id, vrsta_naziv, za_uplatu)
VALUES (6,'Na pesackom prelazu',25000);
GO

INSERT INTO ParkingServis.VRSTA_KAZNE (vrsta_id, vrsta_naziv, za_uplatu)
VALUES (7,'Parkiranje u parku',15000);
GO

--fizicko lice
INSERT INTO ParkingServis.FIZICKO_LICE (fizickol_id,fl_ime,fl_prz)
VALUES (1,'Sonja','Pavlov');
GO

INSERT INTO ParkingServis.FIZICKO_LICE (fizickol_id,fl_ime,fl_prz)
VALUES (2,'Nemanja','Ninkov');
GO

INSERT INTO ParkingServis.FIZICKO_LICE (fizickol_id,fl_ime,fl_prz)
VALUES (3,'Srdjan','Simic');
GO

INSERT INTO ParkingServis.FIZICKO_LICE (fizickol_id,fl_ime,fl_prz)
VALUES (4,'Milica','Tot');
GO

INSERT INTO ParkingServis.FIZICKO_LICE (fizickol_id,fl_ime,fl_prz)
VALUES (5,'Marija','Volta');
GO

INSERT INTO ParkingServis.FIZICKO_LICE (fizickol_id,fl_ime,fl_prz)
VALUES (6,'Isidor','Milovic');
GO

INSERT INTO ParkingServis.FIZICKO_LICE (fizickol_id,fl_ime,fl_prz)
VALUES (7,'Nikola','Markovski');
GO

--preduzetnik
INSERT INTO ParkingServis.PREDUZETNIK (preduzetnik_id,pred_naziv)
VALUES (1,'JKP Vodovod i kanalizacija');--ns
GO

INSERT INTO ParkingServis.PREDUZETNIK (preduzetnik_id,pred_naziv)
VALUES (2,'JP Urbanizam');--ns
GO

INSERT INTO ParkingServis.PREDUZETNIK (preduzetnik_id,pred_naziv)
VALUES (3,'JKP Zelenilo Beograd');--bg
GO

INSERT INTO ParkingServis.PREDUZETNIK (preduzetnik_id,pred_naziv)
VALUES (4,'JKP Gradsko zelenilo');--subotica
GO

INSERT INTO ParkingServis.PREDUZETNIK (preduzetnik_id,pred_naziv)
VALUES (5,'6.Oktobar');--kikinda
GO

INSERT INTO ParkingServis.PREDUZETNIK (preduzetnik_id,pred_naziv)
VALUES (6,'JKP Naisus');--nis
GO

--pravno lice
INSERT INTO ParkingServis.PRAVNO_LICE (pravnol_id,PIB,pravnol_naziv)
VALUES (1,1254,'Laguna');
GO

INSERT INTO ParkingServis.PRAVNO_LICE (pravnol_id,PIB,pravnol_naziv)
VALUES (2,8694,'Maxi');
GO

INSERT INTO ParkingServis.PRAVNO_LICE (pravnol_id,PIB,pravnol_naziv)
VALUES (3,8788,'Idea');
GO

INSERT INTO ParkingServis.PRAVNO_LICE (pravnol_id,PIB,pravnol_naziv)
VALUES (4,6645,'Erste banka');
GO

INSERT INTO ParkingServis.PRAVNO_LICE (pravnol_id,PIB,pravnol_naziv)
VALUES (5,2468,'Kozica');
GO

--klijent
INSERT INTO ParkingServis.KLIJENT (klijent_id,email,klij_tel,ulica,br_ulice,fizickol_id,pravnol_id,preduzetnik_id,mesto)
VALUES (1,'sonja.pavlov@gmail.com','064789456','Bulevar Oslobodjenja','17b',1,null,null,'Novi Sad');
GO

INSERT INTO ParkingServis.KLIJENT (klijent_id,email,klij_tel,ulica,br_ulice,fizickol_id,pravnol_id,preduzetnik_id,mesto)
VALUES (2,'nemanjanin@gmail.com','06344587','Kralja Petra l','10a',2,null,null,'Novi Sad');
GO

INSERT INTO ParkingServis.KLIJENT (klijent_id,email,klij_tel,ulica,br_ulice,fizickol_id,pravnol_id,preduzetnik_id,mesto)
VALUES (3,'srdjan_sm@gmail.com','060779456','Fruskogorska','7',3,null,null,'Beograd');
GO

INSERT INTO ParkingServis.KLIJENT (klijent_id,email,klij_tel,ulica,br_ulice,fizickol_id,pravnol_id,preduzetnik_id,mesto)
VALUES (4,'totmm@gmail.com','060457789','Valjevska','4',4,null,null,'Nis');
GO

INSERT INTO ParkingServis.KLIJENT (klijent_id,email,klij_tel,ulica,br_ulice,fizickol_id,pravnol_id,preduzetnik_id,mesto)
VALUES (5,'voltam@gmail.com','06245786','6.oktobra','10',5,null,null,'Kikinda');
GO

INSERT INTO ParkingServis.KLIJENT (klijent_id,email,klij_tel,ulica,br_ulice,fizickol_id,pravnol_id,preduzetnik_id,mesto)
VALUES (6,'isidormilo@gmail.com','061488467','Svetozara Miletica','11c',6,null,null,'Subotica');
GO

INSERT INTO ParkingServis.KLIJENT (klijent_id,email,klij_tel,ulica,br_ulice,fizickol_id,pravnol_id,preduzetnik_id,mesto)
VALUES (7,'makovski@gmail.com','064788789','Bulevar Oslobodjenja','1a',7,null,null,'Novi Sad');
GO

INSERT INTO ParkingServis.KLIJENT (klijent_id,email,klij_tel,ulica,br_ulice,fizickol_id,pravnol_id,preduzetnik_id,mesto)
VALUES (8,'laguna@gmail.com','064789456','Resavska','33',null,1,null,'Beograd');
GO

INSERT INTO ParkingServis.KLIJENT (klijent_id,email,klij_tel,ulica,br_ulice,fizickol_id,pravnol_id,preduzetnik_id,mesto)
VALUES (9,'maxi@gmail.com','069781552','Zvezdara','bb',null,2,null,'Beograd');
GO

INSERT INTO ParkingServis.KLIJENT (klijent_id,email,klij_tel,ulica,br_ulice,fizickol_id,pravnol_id,preduzetnik_id,mesto)
VALUES (10,'idea@gmail.com','0801001202','Kralja Petra I','bb',null,3,null,'Beograd');
GO

INSERT INTO ParkingServis.KLIJENT (klijent_id,email,klij_tel,ulica,br_ulice,fizickol_id,pravnol_id,preduzetnik_id,mesto)
VALUES (11,'erste.bank@gmail.com','021876454','Bulevar Mihajla Pupina','21',null,4,null,'Novi Sad');
GO

INSERT INTO ParkingServis.KLIJENT (klijent_id,email,klij_tel,ulica,br_ulice,fizickol_id,pravnol_id,preduzetnik_id,mesto)
VALUES (12,'kozica@gmail.com','0653435656','Dobraca','bb',null,5,null,'Kikinda');
GO

INSERT INTO ParkingServis.KLIJENT (klijent_id,email,klij_tel,ulica,br_ulice,fizickol_id,pravnol_id,preduzetnik_id,mesto)
VALUES (13,'kontakt.centar@vikns.rs','0214883333','Masarikova','17',null,null,1,'Novi Sad');
GO

INSERT INTO ParkingServis.KLIJENT (klijent_id,email,klij_tel,ulica,br_ulice,fizickol_id,pravnol_id,preduzetnik_id,mesto)
VALUES (14,'office@nsurbanizam.rs','0214802104','Bulevar Cara Lazara','3/3',null,null,2,'Novi Sad');
GO

INSERT INTO ParkingServis.KLIJENT (klijent_id,email,klij_tel,ulica,br_ulice,fizickol_id,pravnol_id,preduzetnik_id,mesto)
VALUES (15,'info@zelenilo.rs','0112630506','Surcinski put','2',null,null,3,'Beograd');
GO

INSERT INTO ParkingServis.KLIJENT (klijent_id,email,klij_tel,ulica,br_ulice,fizickol_id,pravnol_id,preduzetnik_id,mesto)
VALUES (16,'office@cistoca-su.co.rs','024620444','Atile Jozefa','4',null,null,4,'Subotica');
GO

INSERT INTO ParkingServis.KLIJENT (klijent_id,email,klij_tel,ulica,br_ulice,fizickol_id,pravnol_id,preduzetnik_id,mesto)
VALUES (17,'kispec@eunet.rs','023022844','Dositejeva','bb',null,null,5,'Kikinda');
GO

INSERT INTO ParkingServis.KLIJENT (klijent_id,email,klij_tel,ulica,br_ulice,fizickol_id,pravnol_id,preduzetnik_id,mesto)
VALUES (18,'info@naissus.co.rs','018502715','Kneginje Ljubice','1/1',null,null,6,'Nis');
GO

--vozilo
INSERT INTO ParkingServis.VOZILO (reg_br,klijent_id,reg_oznaka)
VALUES (1,1,'NS-011-AC');
GO

INSERT INTO ParkingServis.VOZILO (reg_br,klijent_id,reg_oznaka)
VALUES (2,2,'NS-246-SS');
GO

INSERT INTO ParkingServis.VOZILO (reg_br,klijent_id,reg_oznaka)
VALUES (3,3,'BG-998-HI');
GO

INSERT INTO ParkingServis.VOZILO (reg_br,klijent_id,reg_oznaka)
VALUES (4,5,'KI-554-LI');
GO

INSERT INTO ParkingServis.VOZILO (reg_br,klijent_id,reg_oznaka)
VALUES (5,4,'NI-789-GH');
GO

INSERT INTO ParkingServis.VOZILO (reg_br,klijent_id,reg_oznaka)
VALUES (6,10,'BG-874-HF');
GO

INSERT INTO ParkingServis.VOZILO (reg_br,klijent_id,reg_oznaka)
VALUES (7,9,'BG-789-LK');
GO

INSERT INTO ParkingServis.VOZILO (reg_br,klijent_id,reg_oznaka)
VALUES (8,11,'NS-112-TT');
GO

INSERT INTO ParkingServis.VOZILO (reg_br,klijent_id,reg_oznaka)
VALUES (9,12,'KI-056-FF');
GO

INSERT INTO ParkingServis.VOZILO (reg_br,klijent_id,reg_oznaka)
VALUES (10,13,'NS-200-GR');
GO

INSERT INTO ParkingServis.VOZILO (reg_br,klijent_id,reg_oznaka)
VALUES (11,14,'NS-602-TR');
GO

INSERT INTO ParkingServis.VOZILO (reg_br,klijent_id,reg_oznaka)
VALUES (12,17,'KI-098-JU');
GO

INSERT INTO ParkingServis.VOZILO (reg_br,klijent_id,reg_oznaka)
VALUES (13,18,'NI-001-KL');
GO

--parkirano na
INSERT INTO ParkingServis.PARKIRANO_NA (reg_br,park_id,sluzba_id,datum_izd,vreme_izd,kontrolor_id)
VALUES (1,1,2,'2021-04-30','10:56',1);
GO

INSERT INTO ParkingServis.PARKIRANO_NA (reg_br,park_id,sluzba_id,datum_izd,vreme_izd,kontrolor_id)
VALUES (2,1,2,'2021-05-01','11:59',1);
GO

INSERT INTO ParkingServis.PARKIRANO_NA (reg_br,park_id,sluzba_id,datum_izd,vreme_izd,kontrolor_id)
VALUES (3,5,1,'2021-05-02','12:01',3);
GO

--kazna
INSERT INTO ParkingServis.KAZNA (serijski_br,vrsta_id,reg_br)
VALUES (89756,1,1);
GO

INSERT INTO ParkingServis.KAZNA (serijski_br,vrsta_id,reg_br)
VALUES (89894,1,3);
GO

INSERT INTO ParkingServis.KAZNA (serijski_br,vrsta_id,reg_br)
VALUES (211546,2,6);
GO

--update za vreme parkiranja
UPDATE ParkingServis.PARKIRANO_NA 
SET datum_park = GETDATE()
WHERE reg_br = 1;

UPDATE ParkingServis.PARKIRANO_NA 
SET datum_park = GETDATE()
WHERE reg_br = 2;

UPDATE ParkingServis.PARKIRANO_NA 
SET datum_park = GETDATE()
WHERE reg_br = 3;

UPDATE ParkingServis.PARKIRANO_NA 
SET vreme_pocetka = '12:30'
WHERE reg_br = 1;

UPDATE ParkingServis.PARKIRANO_NA 
SET vreme_pocetka = '12:00'
WHERE reg_br = 2;

UPDATE ParkingServis.PARKIRANO_NA 
SET vreme_pocetka = '09:00'
WHERE reg_br = 3;