use [NowaBiblioteka];



ALTER TABLE [pracownik]
	ADD	
		stanowisko	INT NOT NULL
;

ALTER TABLE [pracownik]
	ADD CONSTRAINT FK_ID_STANOWISKA
		FOREIGN KEY (stanowisko) REFERENCES stanowiska(id_stanowiska)
;




ALTER TABLE [ksiazka]
	ADD 
		FK_autor		INT NOT NULL
	,	FK_lokalizacja	INT
	,	FK_kategoria	INT	NOT NULL
	,	FK_wydawca		INT NOT NULL
;

ALTER TABLE [ksiazka] WITH CHECK
	ADD CONSTRAINT FK_ID_AUTORA 
		FOREIGN KEY (FK_autor) REFERENCES autorzy(id_autora)
;


ALTER TABLE [ksiazka] WITH CHECK
	ADD CONSTRAINT FK_ID_LOKALIZACJI 
		FOREIGN KEY (FK_lokalizacja) REFERENCES lokalizacja(id_lokalizacji)
;


ALTER TABLE [ksiazka]
		ADD CONSTRAINT FK_ID_KAT
			FOREIGN KEY (FK_kategoria) REFERENCES kategoria(id_kat)
;

ALTER TABLE [ksiazka]
	ADD CONSTRAINT FK_ID_WYDAWCY
		FOREIGN KEY (FK_wydawca) REFERENCES wydawcy(id_wydawcy)
;




ALTER TABLE [lokalizacja]
	ADD	
		ksiazka		INT
;

ALTER TABLE [lokalizacja] WITH CHECK
	ADD CONSTRAINT FK_ID_KSIAZKI
		FOREIGN KEY (ksiazka) REFERENCES ksiazka(id_ksiazki)
		ON UPDATE CASCADE
		ON DELETE CASCADE
;




ALTER TABLE [wypozyczenia]
	ADD
		FK_ksiazka	INT NOT NULL
	,	FK_klient	INT NOT NULL
;

ALTER TABLE [wypozyczenia]
	ADD 
		FK_zwrot	INT NOT NULL
;
		

ALTER TABLE [wypozyczenia] WITH CHECK
	ADD CONSTRAINT FK_ksiazka
		FOREIGN KEY (FK_ksiazka) REFERENCES ksiazka(id_ksiazki)
		ON DELETE CASCADE
;

ALTER TABLE [wypozyczenia] WITH CHECK
	ADD CONSTRAINT FK_klient
		FOREIGN KEY (FK_klient) REFERENCES klient(id_klienta)
		ON DELETE CASCADE
;

ALTER TABLE [wypozyczenia] WITH CHECK
	ADD CONSTRAINT FK_zwrot
	FOREIGN KEY (FK_zwrot) REFERENCES zwroty(id_zwrotu)
;



ALTER TABLE [zwroty]
	ADD
		FK_id_ksiazki_zwroty	INT NOT NULL
	,	FK_id_klienta_zwroty	INT NOT NULL
	,	FK_kara					INT NOT NULL
;

 ALTER TABLE [zwroty] WITH CHECK
	ADD CONSTRAINT FK_id_ksiazki_zwroty
	FOREIGN KEY (FK_id_ksiazki_zwroty) REFERENCES [zwroty](id_zwrotu)
;

ALTER TABLE [zwroty]
	ADD CONSTRAINT FK_id_klienta_zwroty
		FOREIGN KEY (FK_id_klienta_zwroty) REFERENCES klient(id_klienta)
;

ALTER TABLE [zwroty]
	ADD CONSTRAINT FK_kara
		FOREIGN KEY (FK_kara) REFERENCES kary(id_kary)
;



ALTER TABLE [kary]
	ADD
		FK_id_klienta_kary	INT	NOT NULL
	,	FK_id_wypozyczenia	INT NOT NULL
;


ALTER TABLE [kary]	WITH CHECK
	ADD CONSTRAINT FK_id_klienta_kary
		FOREIGN KEY	(FK_id_klienta_kary) REFERENCES klient(id_klienta)
;

ALTER TABLE [kary] WITH CHECK
	ADD CONSTRAINT FK_id_wypozyczenia
		FOREIGN KEY (FK_id_wypozyczenia) REFERENCES wypozyczenia(id_wypozyczenia)
;


