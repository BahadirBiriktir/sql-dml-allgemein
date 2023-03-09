-- wähl alle spalten und zeilen aus
select * from student;


-- wählt speziellen spalten aus tabelle student
select Name, adresse, geburtsdatum from student;



-- wählt speziellen spalten un zeielen aus tabelle student
select Name, adresse, geburtsdatum from student
where to_char(geburtsdatum, 'YYYY') = 2002;


--löscht alle datenSätze, aus der tabelle student
delete from student;

rollback; --undo--> gegenteil con commit


--löscht einen soeziellen datensatz aufgrund des Pks (sandra blasl)
delete from student
where studienjahr = 2022 and matrikelnummer = 31;

--ändert alle datensätze in der tabelle student im attribut studienjahr
update student set studienjahr = 2023;
commit;


--ändert einen speziellen datensatz
update student set adresse = 'tschinowitscher Weg 5, 9500 Villach'
where name = 'Bernhard Pinter';
commit;
