/*1. Készítsünk nézetet VSZOBA néven, amely megjeleníti a szobák adatai mellett a megfelelő szálláshely nevét, helyét és a csillagok számát is!

Az oszlopoknak nem szükséges külön nevet adni!
Teszteljük is a nézetet, pl: SELECT * FROM UJAENB_VSZOBA*/

/*
create or alter view vszoba
AS
select 	sz.*,
		szh.szallas_nev,
        szh.hely,
        szh.CSILLAGOK_SZAMA

FROM szoba sz join Szallashely szh on sz.SZALLAS_FK = szh.SZALLAS_ID*/

/*2 Készítsen tárolt eljárást SPUgyfelFoglalasok, amely a paraméterként megkapott ügyfél azonosítóhoz tartozó foglalások adatait listázza!
Teszteljük a tárolt eljárás működését, pl: EXEC UJAENB_SPUgyfelFoglalasok 'laszlo2'
*/

/*CREATE OR alter proc SPUgyfelFoglalasok
@ugyfel nvarchar(100)
as
BEGIN
	select *
    from Foglalas
    where ugyfel_fk = @ugyfel
END*/


/*
3. Készítsen skalár értékű függvényt UDFFerohely néven, amely visszaadja, hogy a paraméterként megkapott foglalás azonosítóhoz hány férőhelyes szoba tartozik!
a. Teszteljük a függvény működését!
*/


CREATE OR ALTER FUNCTION UDFFerohely
(
  @foglalasazon int
)
RETURNS int --a visszaadott érték típusa
as
BEGIN
	SELECT sz.FEROHELY
    from Foglalas f join szoba sz on f.SZOBA_FK = sz.SZOBA_ID
    where f.FOGLALAS_PK = @foglalasazon
    RETURN --a visszaadott érték
END