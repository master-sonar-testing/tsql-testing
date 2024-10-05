select fl.fl_ime + ' ' + fl.fl_prz as "Fizicko lice", k.email as "Email", k.klij_tel as "Kontakt", k.ulica + ' ' + k.br_ulice as "Adresa"
from ParkingServis.KLIJENT k inner join ParkingServis.FIZICKO_LICE fl on k.fizickol_id = fl.fizickol_id
order by fl.fl_ime asc;

select ps.naziv_pred as "Parking sluzba", k.zap_ime + ' ' + k.zap_prz as "Kontrolor", ps.grad as "Grad", p.ulica as "Ulica parkiralista", p.zona as "Zona parkiralista"
from ParkingServis.KONTROLISE ks join ParkingServis.KONTROLOR k on ks.kontrolor_id = k.kontrolor_id left join ParkingServis.PARKING_SLUZBA ps on k.sluzba_id = ps.sluzba_id left join ParkingServis.PARKIRALISTE p on ps.sluzba_id = p.sluzba_id
order by ps.naziv_pred asc;

select ps.naziv_pred as "Parking sluzba", ps.grad as "Grad", count(p.park_id) as "Broj parkiralista"
from ParkingServis.PARKING_SLUZBA ps inner join ParkingServis.PARKIRALISTE p on ps.sluzba_id = p.sluzba_id
where p.sluzba_id = ps.sluzba_id
group by grad, naziv_pred;

select kz.serijski_br as "Serijski broj",v.reg_oznaka as "Registracija"
from ParkingServis.KAZNA kz join ParkingServis.VOZILO v on kz.reg_br = v.reg_br 
where v.reg_br = (select reg_br from ParkingServis.VOZILO where klijent_id = 1);

select k.serijski_br as "Serijski broj", vk.vrsta_naziv as "Vrsta kazne"
from ParkingServis.KAZNA k left join ParkingServis.VRSTA_KAZNE vk on k.vrsta_id = vk.vrsta_id
group by vk.za_uplatu, k.serijski_br, vk.vrsta_naziv
having vk.za_uplatu >= 5000;