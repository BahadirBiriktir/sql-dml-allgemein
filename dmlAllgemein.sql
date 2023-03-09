-- w�hl alle spalten und zeilen aus
select * from student;


-- w�hlt speziellen spalten aus tabelle student
select Name, adresse, geburtsdatum from student;



-- w�hlt speziellen spalten un zeielen aus tabelle student
select Name, adresse, geburtsdatum from student
where to_char(geburtsdatum, 'YYYY') = 2002;


--l�scht alle datenS�tze, aus der tabelle student
delete from student;

rollback; --undo--> gegenteil con commit


--l�scht einen soeziellen datensatz aufgrund des Pks (sandra blasl)
delete from student
where studienjahr = 2022 and matrikelnummer = 31;

--�ndert alle datens�tze in der tabelle student im attribut studienjahr
update student set studienjahr = 2023;
commit;


--�ndert einen speziellen datensatz
update student set adresse = 'tschinowitscher Weg 5, 9500 Villach'
where name = 'Bernhard Pinter';
commit;
