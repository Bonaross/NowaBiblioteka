USE [NowaBiblioteka];

CREATE TABLE pracownik
(
		id_pracownika	INT				NOT NULL	CONSTRAINT PK_ID_PRACOWNIKA	PRIMARY KEY
	,	imie_prac		NVARCHAR(30)	NOT NULL
	,	nazw_prac		NVARCHAR(30)	NOT NULL
	,	pesel_prac		NVARCHAR(11)	UNIQUE NOT NULL 
	,	email_prac		NVARCHAR(50)	NOT NULL
	,	nr_tel_prac		NVARCHAR(9)		NOT NULL
	,	data_zatr		DATETIME		NOT NULL
);

CREATE TABLE klient
(
		id_klienta		INT				NOT NULL	CONSTRAINT PK_ID_KLIENTA PRIMARY KEY
	,	imie_klienta	NVARCHAR(30)	NOT NULL
	,	nazw_klienta	NVARCHAR(30)	NOT NULL	
	,	email_klienta	NVARCHAR(50)	NOT NULL
	,	nr_tel_klienta	NVARCHAR(9)		NOT NULL
);

CREATE TABLE ksiazka
(
		id_ksiazki		INT				NOT NULL	CONSTRAINT PK_ID_KSIAZKI PRIMARY KEY
	,	tytul			NVARCHAR(255)	NOT NULL
	,	rok_wydania		NVARCHAR(4)		NOT NULL
);

CREATE TABLE autorzy
(
		id_autora		INT				NOT NULL	CONSTRAINT PK_ID_AUTORA	PRIMARY KEY
	,	imie_autora		NVARCHAR(30)	NOT NULL
	,	dr_imie_autora	NVARCHAR(30)	
	,	nazw_autora		NVARCHAR(30)	NOT NULL
);

CREATE TABLE stanowiska
(
		id_stanowiska	 INT			NOT NULL	CONSTRAINT PK_ID_STANOWISKA PRIMARY KEY
	,	nazwa_stanowiska NVARCHAR(255)	NOT NULL		
);

CREATE TABLE wydawcy
(
		id_wydawcy		INT				NOT NULL	CONSTRAINT PK_ID_WYDAWCY PRIMARY KEY
	,	nazwa_wydawcy	NVARCHAR(255)	NOT NULL
);

CREATE TABLE lokalizacja																					-- zrobiæ widok, który pokazuje w jednej linijce gdzie jest jaka ksiazka --
(
		id_lokalizacji	INT	NOT NULL	CONSTRAINT	PK_ID_LOKALIZACJI PRIMARY KEY
	,	nr_alei			INT	NOT NULL
	,	nr_regalu		INT NOT NULL
	,	nr_polki		INT NOT NULL	
);

CREATE TABLE wypozyczenia
(
		id_wypozyczenia	INT	NOT NULL	CONSTRAINT	PK_ID_WYPOZYCZENIA PRIMARY KEY
);

CREATE TABLE zwroty
(
		id_zwrotu		INT			NOT NULL	CONSTRAINT	PK_ID_ZWROTU PRIMARY KEY
	,	data_wypozycz	DATETIME	NOT NULL
	,	data_zwrotu		DATETIME	NOT NULL
);

CREATE TABLE kary
(
		id_kary			INT			NOT NULL	CONSTRAINT PK_ID_KARY PRIMARY KEY
	,	wys_kary		DECIMAL(9,2) 
);

CREATE TABLE kategoria
(
		id_kat			INT				NOT NULL	CONSTRAINT	PK_ID_KATEGORII PRIMARY KEY
	,	nazwa_kat		NVARCHAR(30)	NOT NULL
);




