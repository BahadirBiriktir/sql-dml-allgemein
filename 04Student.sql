drop table student cascade constraints;
drop sequence sq_matrikelnummer;

create sequence sq_matrikelnummer start with 1 increment by 10;

create table student(
  studienjahr integer, 
  matrikelnummer integer, 
  name varchar2(64) NOT NULL, 
  adresse varchar2(128) NOT NULL,
  geburtsdatum date,
  constraint pk_student primary key (studienjahr, matrikelnummer),
  constraint ck_studienjahr check (length(to_char(studienjahr)) = 4),
  constraint ck_alter check (to_char(geburtsdatum, 'Q') < 4 and (studienjahr - to_char(geburtsdatum, 'YYYY') >= 19) or 
                             to_char(geburtsdatum, 'Q') = 4 and (studienjahr - to_char(geburtsdatum, 'YYYY') >= 20))
);

/******************************************************************************
STUDENT
******************************************************************************/
/*INSERTS, die eingefügt werden können*/
insert into student values(2022, sq_matrikelnummer.nextval, 'Markus Hölbling', 'Bachstraße 17, 9560 Feldkirchen', to_date('22.05.2002', 'dd.mm.yyyy'));
insert into student values(2022, sq_matrikelnummer.nextval, 'Daniel Finke', 'Morogasse 45, 9020 Klagenfurt', to_date('24.09.2003', 'dd.mm.yyyy'));
insert into student values(2022, sq_matrikelnummer.nextval, 'Martina Hasshold', 'Anton-Anderluh Weg 5, 9500 Villach', to_date('23.03.2003', 'dd.mm.yyyy'));
insert into student values(2022, sq_matrikelnummer.nextval, 'Sandra Blasl', 'Hangsiedlung 10, 9371 Brückl', to_date('18.08.2002', 'dd.mm.yyyy'));
insert into student values(2022, sq_matrikelnummer.nextval, 'Monika Gruber', 'Lendkanalweg 27/6, 9020 Klagenfurt', to_date('25.05.2003', 'dd.mm.yyyy'));
insert into student values(2022, sq_matrikelnummer.nextval, 'Bernhard Pinter', 'Schulstraße 34, 9761 Greifenburg', to_date('18.10.2002', 'dd.mm.yyyy'));
commit;