/*
Ebben a táblában eredetileg nem volt INT alapú oszlop,
de mivel Tanár Úr kért random maszkot is, emiatt muszáj
volt csinálnom egy számított oszlopot HANYEVES néven.
Remélem megfelelő így.
*/

CREATE TABLE Vendeg_Maszkolt
(USERNEV    nvarchar(20)    NOT NULL PRIMARY KEY,
NEV         nvarchar(50)    MASKED WITH (Function = 'partial(2,"XXX",2)'),
EMAIL       nvarchar(50)    MASKED WITH (Function = 'email()'),
SZAML_CIM   nvarchar(100)   MASKED WITH (Function = 'partial(5,"XXX",0)'),
SZUL_DAT    date            MASKED WITH (Function = 'default()'),
HANYEVES    INT             MASKED WITH (Function = 'random(1,100)')
)
INSERT INTO Vendeg_Maszkolt (USERNEV,NEV,EMAIL,SZAML_CIM,SZUL_DAT,HANYEVES)
VALUES
('adam1','Kiss Ádám','ádám.kiss@mail.hu','5630 Békés Szolnoki út 8.','1991-12-28',33),
('adam3','Barkóci Ádám','adam3@gmail.com','3910 Tokaj Dózsa György utca 37.','1970-06-07',54),
('adam4','Bieniek Ádám','ádám.bieniek@mail.hu','8630 Balatonboglár Juhászföldi út 1.','1976-08-01',48),
('agnes','Lengyel Ágnes','agnes@gmail.com','5200 Törökszentmiklós Deák Ferenc út 5.','1979-12-10',45),
('agnes3','Hartyánszky Ágnes','agnes3@gmail.com','6430 Bácsalmás Posta köz 2.','1967-04-11',57),
('AGNESH','Horváth Ágnes','AGNESH@gmail.com','8200 Veszprém Rákóczi utca 21.','1981-12-24',43),
('AGNESK','Kovács Ágnes','AGNESK@gmail.com','1084 Budapest Endrődi Sándor utca 47.','1988-10-02',36),
('akos','Bíró Ákos','ákos.bíró@mail.hu','9023 Győr Kossuth Lajos utca 47/b.','1982-04-24',42),
('aladar','Dunai Aladár','aladár.dunai@mail.hu','5931 Nagyszénás Árpád utca 23.','1980-11-01',44),
('alexandra','Bagóczki Alexandra','alexandra.bagóczki@mail.hu','2381 Táborfalva Petőfi utca 1/2.','1992-03-25',32),
('andi','Maródi Andrea','andrea.maródi@mail.hu','5465 Cserkeszőlő Árpád utca 4.','1968-05-07',56),
('andras2','Tóth András','andrás.tóth@mail.hu','4071 Egyek Petőfi utca 30.','1997-10-31',27),
('andras21','Molnár András','andrás.molnár@mail.hu','7900 Szigetvár Rákóczi utca 67.','1977-11-16',47),
('andras3','Vígh András','andrás.vígh@mail.hu','1118 Budapest Arany János utca 1.','1971-04-02',53),
('andras4','Back András','andras4@gmail.com','3783 Edelény Fő út 169.','1984-04-07',40),
('andras41','Komjáti András','andras41@gmail.com','5065 Nagykörű Kossuth út 24.','1997-10-25',27),
('ANDRASE','Erdei András','ANDRASE@gmail.com','5071 Besenyszög Szolnoki út 8.','1997-05-29',27),
('ANDRASN','Nagy András','andrás.nagy@mail.hu','6500 Baja Fő út 169.','1980-09-05',44),
('andrea','Kiss Andrea','andrea.kiss@mail.hu','1113 Budapest Petőfi Sándor utca 87.','1993-03-25',31),
('andrea3','Szomor Andrea','andrea3@gmail.com','7960 Sellye Bécsi utca 82.','1996-05-10',28),
('andrea4','Neizer Andrea','andrea4@gmail.com','1124 Budapest Kiss u. 8.','1981-05-17',43),
('ANDREAT','Tornyos Andrea','ANDREAT@gmail.com','6131 Szank Bécsi utca 82.','1986-11-14',38),
('anett3','Pivarcsi Anett','anett.pivarcsi@mail.hu','1149 Budapest Fő út 60.','1967-01-03',57),
('aniko','Tóth Anikó','aniko@gmail.com','2085 Pilisvörösvár Deák Ferenc út 5.','1973-06-03',51),
('aniko4','Böröcz Anikó','aniko4@gmail.com','2484 Agárd Petőfi Sándor tér 1.','1978-03-26',46),
('ANIKOS','Simon Anikó','ANIKOS@gmail.com','5137 Jászkisér Bécsi utca 82.','1988-12-14',36),
('anita','Hamvay-Kovács Anita','anita.hamvay-kovács@mail.hu','7220 Sarkad Táncsics utca 19.','1971-03-20',53),
('annamaria1','Szűcs Annamária','annamária.szűcs@mail.hu','1191 Budapest Rendeki utca 21.','1990-04-27',34),
('ANNAMARIAR','Regős Annamária','ANNAMARIAR@gmail.com','8283 Káptalantóti Petőfi Sándor tér 1.','1977-09-26',47),
('aron2','Jakab Áron','aron2@gmail.com','7133 Fadd Bajcsy-Zsilinszky utca 4.','1971-04-26',53),
('ARONK','Kelemen Áron','áron.kelemen@mail.hu','8200 Veszprém Petőfi utca 8.','1989-08-10',35),
('arpad2','Ötvös Árpád','árpád.ötvös@mail.hu','2600 Vác Padragi út 158.','1990-06-08',34),
('ARPADH','Horváth Árpád','árpád.horváth@mail.hu','7349 Szászvár Dózsa György u. 1.','1990-05-18',34),
('ARPADM','Móricz Árpád','árpád.móricz@mail.hu','3910 Tokaj Rákóczi utca 67.','1986-04-20',38),
('attila','Csóti Attila','attila@gmail.com','3000 Hatvan Bajcsy-Zsilinszky utca 4.','1979-12-25',45),
('attila1','Gulyás Attila','attila.gulyás@mail.hu','3881 Abaújszántó Szolnoki út 8.','1982-08-16',42),
('attila4','Baróti Attila','attila.baróti@mail.hu','7149 Báta Arany János utca 3.','1975-11-06',49),
('ATTILAO','Opra Attila','ATTILAO@gmail.com','8283 Káptalantóti Rákóczi út 200.','1995-05-08',29),
('balazs1','Bozsik Balázs','balázs.bozsik@mail.hu','2300 Ráckeve Bécsi utca 82.','1992-11-03',32),
('balazs2','Szűcs Balázs','balázs.szűcs@mail.hu','3170 Szécsény Szabadság utca 95.','1984-10-31',40),
('balazs3','Bakódy Balázs','balazs3@gmail.com','2131 Göd Arany János utca 1.','1986-09-09',38),
('balint','Horváth Bálint','balint@gmail.com','6646 Tömörkény Endrődi Sándor utca 47.','1996-03-17',28),
('balint1','Molnár Bálint','balint1@gmail.com','9181 Kimle Fő út 169.','1989-08-24',35),
('balint2','Vukasinovity Bálint','balint2@gmail.com','2330 Dunaharaszti Béke utca 7.','1997-09-03',27),
('balu','Endresz Bálint','bálint.endresz@mail.hu','3973 Cigánd Fő út 169.','1976-08-01',48),
('beata4','Bagi Beáta','beáta.bagi@mail.hu','8477 Tüskevár Felszabadulás utca 32.','1994-03-19',30),
('BEATRIXK','Kerényi Beatrix','beatrix.kerényi@mail.hu','7396 Magyarszék Kossuth Lajos utca 47/b.','1972-04-06',52),
('BEATRIXS','Szekendi Beatrix','beatrix.szekendi@mail.hu','4060 Balmazújváros Jászai tér 21.','1981-04-06',43),
('BELAF','Farkas Béla','BELAF@gmail.com','5530 Vésztő Petőfi Sándor utca 3.','1995-02-24',29),
('bence','Győrffy Bence','bence@gmail.com','6900 Makó Árpád utca 23.','1987-07-09',37),
('BENCEB','Bajusz Bence','bence.bajusz@mail.hu','8391 Sármellék Fő utca 56.','1973-06-21',51),
('bernadett1','Simon Bernadett','bernadett1@gmail.com','2300 Ráckeve Fő utca 108.','1984-10-13',40),
('bernadett2','Kovács Bernadett','bernadett.kovács@mail.hu','4200 Hajdúszoboszló Fő út 122.','1996-08-20',28),
('BERNADETTO','Orbán Bernadett','bernadett.orbán@mail.hu','5085 Rákóczifalva Arany János utca 1.','1987-12-07',37),
('bertalan','Csiger Bertalan','bertalan@gmail.com','1192 Budapest Fő út 169.','1977-10-15',47),
('brigitta','Székely Brigitta','brigitta.székely@mail.hu','2462 Martonvásár Fő utca 47.','1978-09-13',46),
('brigitta3','Pataki Brigitta','brigitta.pataki@mail.hu','2730 Albertirsa Rendeki utca 21.','1991-05-23',33),
('csongor3','Nagymihály Csongor','csongor.nagymihály@mail.hu','9181 Kimle Deák Ferenc út 5.','1984-03-05',40),
('dani','Vörös Dániel','daniel@gmail.com','7150 Bonyhád Dózsa György u. 1.','1986-10-14',38),
('daniel','Rácz Dániel','dániel.rácz@mail.hu','9181 Kimle Szabadság tér 9.','1978-11-28',46),
('daniel1','Keszler Dániel','dániel.keszler@mail.hu','3580 Tiszaújváros Kossuth Lajos utca 6.','1969-07-16',55),
('david','Ambrus Dávid','david@gmail.com','1149 Budapest Fő út 18.','1974-02-11',50),
('david1','Sobják Dávid','david1@gmail.com','5083 Kengyel Arany János utca 3.','1970-08-16',54),
('david4','Berta Dávid','david4@gmail.com','3500 Miskolc Balatoni út 12.','1990-10-08',34),
('debora','Barna Debóra','debóra.barna@mail.hu','1155 Budapest Fő út 169.','1976-10-14',48),
('denes','Tömböly Dénes','denes@gmail.com','2400 Dunaújváros Kossuth út 39.','1975-03-14',49),
('dora3','Sarodi Dóra','dóra.sarodi@mail.hu','2855 Bokod Fő út 18.','1995-05-18',29),
('edit','Bittmann Edit','edit.bittmann@mail.hu','6077 Orgovány Fő utca 60.','1984-04-20',40),
('emese','Kuruc Emese','emese.kuruc@mail.hu','6700 Szeged Rákóczi utca 67.','1989-08-10',35),
('eszter','Molnár Eszter','eszter.molnár@mail.hu','6800 Hódmezővásárhely Fő út 77.','1987-05-10',37),
('eszter2','Balogh Eszter','eszter.balogh@mail.hu','6760 Kistelek Kossuth utca 11.','1998-01-31',26),
('eszter4','Fülöp Eszter','eszter.fülöp@mail.hu','3643 Dédestapolcsány Kossuth Lajos utca 47/b.','1993-06-28',31),
('ESZTERE','Érsek Eszter','eszter.érsek@mail.hu','6785 Pusztamérges Kossuth Lajos utca 6.','1978-08-28',46),
('eva','Enyedi Éva','eva@gmail.com','4231 Bököny Petőfi utca 8.','1967-06-30',57),
('eva2','Perlinger Éva','eva2@gmail.com','9653 Répcelak Bécsi utca 82.','1971-08-19',53),
('EVAV','Viktor Éva','EVAV@gmail.com','6913 Csanádpalota Arany János utca 3.','1980-12-26',44),
('ferenc1','Orosz Ferenc','ferenc.orosz@mail.hu','5061 Tiszasüly Arany János utca 3.','1983-10-08',41),
('fruzsina4','Frank Fruzsina','fruzsina4@gmail.com','9700 Szombathely Szabadság utca 95.','1996-08-16',28),
('gabor1','Köves Gábor','gabor1@gmail.com','6762 Sándorfalva Árpád utca 23.','1973-07-15',51),
('gabor4','Telek Gábor','gábor.telek@mail.hu','9071 Görbeháza Fő út 169.','1987-03-15',37),
('GABORS','Szöllősi Gábor','GABORS@gmail.com','3630 Putnok Kossuth utca 27.','1990-05-31',34),
('gabriella1','Nagy Gabriella','gabriella1@gmail.com','1077 Budapest Dob utca 1','1982-11-01',42),
('gabriella10','Vida Gabriella','gabriella10@gmail.com','2484 Agárd Arany János utca 3.','1969-06-18',55),
('georgij','Nyíri Georgij','georgij.nyíri@mail.hu','8391 Sármellék Grassalkovich út 10.','1983-02-23',41),
('gusztav','Bárci Gusztáv','gusztav@gmail.com','3643 Dédestapolcsány Endrődi Sándor utca 47.','1967-02-25',57),
('GYONGYIK','Kornseé Gyöngyi','gyöngyi.kornseé@mail.hu','8800 Nagykanizsa Fő út 60.','1974-06-07',50),
('GYORGYO','Oroszi György','GYORGYO@gmail.com','7220 Sarkad Dózsa György u. 1.','1980-03-23',44),
('henrik3','Nádudvari Henrik','henrik.nádudvari@mail.hu','1077 Budapest Tanácsköztársaság tér 1.','1986-12-05',38),
('IBOLYAA','Andor Ibolya','ibolya.andor@mail.hu','9023 Győr Posta köz 2.','1983-11-27',41),
('ilona3','Bosnyák Ilona','ilona3@gmail.com','2483 Gárdony Posta köz 2.','1990-08-06',34),
('imre','Búza Imre','imre.búza@mail.hu','9181 Kimle Petőfi Sándor tér 1.','1988-09-30',36),
('imre1','Papp Imre','imre.papp@mail.hu','1077 Budapest Szolnoki út 8.','1976-06-25',48),
('istvan','Soós István','istvan@gmail.com','2370 Dabas Kossuth utca 27.','1986-06-28',38),
('istvan1','Vizi István','istván.vizi@mail.hu','7086 Ozora Rákóczi utca 1.','1997-12-01',27),
('ISTVANV','Varga István','ISTVANV@gmail.com','6320 Solt Hősök tere 11.','1989-04-09',35),
('janos3','Harangozó János','janos3@gmail.com','8700 Marcali Petőfi Sándor tér 1.','1967-11-02',57),
('JANOSG','Giliga János','JANOSG@gmail.com','3300 Eger Deák Ferenc út 5.','1975-01-03',49),
('JANOSP','Pálinkás János','JANOSP@gmail.com','5920 Csorvás Padragi út 158.','1984-10-12',40),
('jozsef','Gergely József','jozsef@gmail.com','6050 Lajosmizse Fő út 18.','1985-11-01',39),
('jozsef2','Vajda József','józsef.vajda@mail.hu','6700 Szeged Baracsi László utca 14.','1978-09-04',46),
('JOZSEFG','Gyuris József','józsef.gyuris@mail.hu','2660 Balassagyarmat Petőfi utca 1/2.','1975-05-26',49),
('JUDITH','Hídasi Judit','JUDITH@gmail.com','2100 Gödöllő Fő út 169.','1997-07-12',27),
('julia','Tóth Júlia','julia@gmail.com','5310 Kisújszállás Árpád utca 4.','1993-03-02',31),
('julia4','Nagy Júlia','julia4@gmail.com','7000 Sárbogárd Jászai tér 21.','1985-08-11',39),
('julianna4','Szabó Julianna','julianna4@gmail.com','6700 Szeged Kossuth Lajos utca 6.','1990-09-29',34),
('kata','Gondos Katalin','katalin.gondos@mail.hu','8237 Tihany Kossuth Lajos utca 6.','1968-06-22',56),
('katalin','Horváth Katalin','katalin.horváth@mail.hu','2424 Előszállás Rákóczi út 200.','1968-01-01',56),
('katalin4','Kertész Katalin','katalin4@gmail.com','2800 Tatabánya Búvár utca 4.','1986-04-13',38),
('kati','Zatykó Katalin','katalin.zatykó@mail.hu','7511 Ötvöskónyi Kossuth Lajos utca 6.','1995-05-01',29),
('katka','Kovács Katalin','katalin.kovács@mail.hu','8254 Kővágóörs Petőfi utca 22.','1975-03-31',49),
('klaudia2','Bakó Klaudia','klaudia.bakó@mail.hu','8254 Kővágóörs Kossuth Lajos utca 6.','1982-04-16',42),
('kornel4','Lukács Kornél','kornél.lukács@mail.hu','2053 Herceghalom Bécsi utca 82.','1975-09-30',49),
('kristof4','Poprádi Kristóf','kristof4@gmail.com','8220 Balatonalmádi Mészáros utca 7.','1984-01-15',40),
('kriszti','Horváth Krisztina','kriszti@gmail.com','6060 Tiszakécske Árpád utca 4.','1978-06-12',46),
('krisztian4','Czérna Krisztián','krisztián.czérna@mail.hu','1107 Budapest Dózsa György utca 37.','1970-08-01',54),
('KRISZTIANM','Mogyródi Krisztián','KRISZTIANM@gmail.com','9155 Lébény Jászai tér 21.','1968-05-27',56),
('krisztina','Szedlár Krisztina','krisztina@gmail.com','6646 Tömörkény Arany János utca 1.','1979-05-10',45),
('krisztina1','Bori Krisztina','krisztina.bori@mail.hu','2115 Vácszentlászló Fő utca 47.','1969-10-13',55),
('KRISZTINAG','Gyárfás Krisztina','KRISZTINAG@gmail.com','6762 Sándorfalva Arany János utca 1.','1987-09-19',37),
('lajos','Kiss Lajos','lajos.kiss@mail.hu','1077 Budapest Dob utca 1','1978-10-31',46),
('lala','Nagymihály Lajos','lajos.nagymihály@mail.hu','8638 Balatonlelle Rákóczi út 200.','1997-02-24',27),
('laszlo1','Farkas László','lászló.farkas@mail.hu','5200 Törökszentmiklós Rendeki utca 21.','1967-10-30',57),
('laszlo2','Móra László','lászló.móra@mail.hu','9970 Szentgotthárd Petőfi utca 1/2.','1975-02-19',49),
('LASZLOA','Antal László','lászló.antal@mail.hu','2484 Agárd Bécsi utca 82.','1969-06-29',55),
('LASZLON','Nagy László','lászló.nagy@mail.hu','1173 Budapest Jászai tér 21.','1969-04-12',55),
('maria1','Baráth Mária','mária.baráth@mail.hu','1047 Budapest Posta köz 2.','1995-11-19',29),
('mark','Kispál Márk','márk.kispál@mail.hu','1086 Budapest Juhászföldi út 1.','1996-01-23',28),
('MARKH','Horváth Márk','márk.horváth@mail.hu','4400 Nyíregyháza Badacsonyi utca 12.','1997-09-23',27),
('marton','Kalacsi Márton','marton@gmail.com','5137 Jászkisér Fő út 169.','1989-06-24',35),
('MATEK','Koza Máté','máté.koza@mail.hu','1011 Budapest Központi telep 3.','1997-02-28',27),
('matyas2','Botka Mátyás','matyas2@gmail.com','2700 Cegléd Kossuth Lajos utca 6.','1972-07-07',52),
('MATYASS','Szilágyi Mátyás','mátyás.szilágyi@mail.hu','9023 Győr Kossuth Lajos utca 6.','1975-03-22',49),
('MIHALYJ','Juhász Mihály','mihály.juhász@mail.hu','6786 Ruzsa Rákóczi utca 1.','1979-10-12',45),
('miklos2','Gondos Miklós','miklos2@gmail.com','2100 Gödöllő Árpád utca 23.','1995-10-07',29),
('MIKLOSB','Balla Miklós','miklós.balla@mail.hu','4060 Balmazújváros Szent István utca 2.','1979-02-16',45),
('MONIKAM','Mohos Mónika','mónika.mohos@mail.hu','2241 Sülysáp Baracsi László utca 14.','1974-10-01',50),
('NANDORF','Fő Nándor','nándor.fő@mail.hu','5920 Csorvás Bécsi utca 82.','1968-11-12',56),
('nikolett3','Horváth Nikolett','nikolett3@gmail.com','1072 Budapest Arany János utca 1.','1981-09-29',43),
('nikoletta4','Kő Nikoletta','nikoletta4@gmail.com','5537 Zsadány Fő út 18.','1972-01-10',52),
('NIKOLETTAT','Tatár Nikoletta','nikoletta.tatár@mail.hu','1067 Budapest Győri utca 12.','1997-10-19',27),
('norbert','Szűcs Norbert','norbert@gmail.com','5071 Besenyszög Győri utca 12.','1969-07-17',55),
('norbert2','Hegedűs Norbert','norbert.hegedűs@mail.hu','2081 Piliscsaba Rendeki utca 21.','1991-07-17',33),
('norbert4','Mile Norbert','norbert4@gmail.com','3973 Cigánd Bajcsy-Zsilinszky utca 4.','1983-06-15',41),
('norbert5','Béres Norbert','norbert5@gmail.com','8640 Fonyód Bajcsy-Zsilinszky utca 4.','1975-07-27',49),
('pal','Barabás Pál','pál.barabás@mail.hu','1183 Budapest Szolnoki út 8.','1968-02-06',56),
('peter1','Kozma Péter','peter1@gmail.com','6913 Csanádpalota Központi telep 3.','1976-03-18',48),
('peter2','Bozsó Péter','peter2@gmail.com','4800 Vásárosnamény Zombori út 2/A','1976-01-26',48),
('peter3','Szalai Péter','peter3@gmail.com','1155 Budapest Arany János utca 3.','1983-07-18',41),
('peter4','Bíró Péter','péter.bíró@mail.hu','5137 Jászkisér Rákóczi utca 67.','1985-09-01',39),
('PETERB','Berendi Péter','péter.berendi@mail.hu','3980 Sátoraljaújhely Vasút utca 4/10.','1969-01-01',55),
('polla','Palágyi Polla','polla@gmail.com','2484 Agárd Fő út 18.','1994-02-04',30),
('rajmond4','Rácz Rajmond','rajmond.rácz@mail.hu','9155 Lébény Petőfi utca 1/2.','1993-09-25',31),
('reka4','Szikszai Réka','réka.szikszai@mail.hu','8254 Kővágóörs Templom utca 73.','1969-11-27',55),
('RENATAK','Kardos Renáta','renáta.kardos@mail.hu','7086 Ozora Bécsi utca 82.','1988-05-17',36),
('RENATAS','Szirmai Renáta','RENATAS@gmail.com','2053 Herceghalom Kossuth utca 27.','1991-03-26',33),
('robert2','Patay Róbert','robert2@gmail.com','2370 Dabas Rákóczi utca 21.','1977-01-08',47),
('ROBERTI','Iván Róbert','róbert.iván@mail.hu','2377 Örkény Petőfi Sándor utca 3.','1967-07-02',57),
('ROBERTP','Pásztor Róbert','ROBERTP@gmail.com','5137 Jászkisér Ady Endre út 27.','1972-05-16',52),
('roland','Tóth Roland','roland@gmail.com','2000 Szentendre Fő út 169.','1968-03-21',56),
('roland1','Ferencz Roland','roland.ferencz@mail.hu','2424 Előszállás Fő út 169.','1985-12-31',39),
('roza2','Bucskó Róza','roza2@gmail.com','5661 Újkígyós Arany János utca 3.','1988-12-26',36),
('sandor','Karasz Sándor','sandor@gmail.com','8283 Káptalantóti Kossuth Lajos utca 1/a.','1970-01-27',54),
('sandor3','Farkas Sándor','sándor.farkas@mail.hu','8640 Fonyód Tanácsköztársaság tér 1.','1989-01-27',35),
('sandor4','Nagy Sándor','sandor4@gmail.com','4600 Kisvárda Fő utca 47.','1997-06-11',27),
('sara','Farkas Sára','sára.farkas@mail.hu','5940 Tótkomlós Felszabadulás utca 32.','1973-04-05',51),
('SEBASTIANF','Foltényi Sebastián','SEBASTIANF@gmail.com','7960 Sellye Grassalkovich út 10.','1992-09-09',32),
('sebestyen','Rab Sebestyén','sebestyen@gmail.com','7130 Tolna Központi telep 3.','1992-03-03',32),
('szabolcs','Bodor Szabolcs','szabolcs.bodor@mail.hu','6786 Ruzsa Ady Endre út 27.','1990-07-16',34),
('SZABOLCSM','Miklós Szabolcs','szabolcs.miklós@mail.hu','1102 Budapest Fő út 169.','1980-08-11',44),
('SZILARDS','Szalai Szilárd','szilárd.szalai@mail.hu','1077 Budapest Fő út 18.','1967-09-28',57),
('szilvia1','Tari Szilvia','szilvia.tari@mail.hu','6080 Szabadszállás Bécsi utca 82.','1971-03-09',53),
('tamara2','Miklós Tamara','tamara.miklós@mail.hu','3910 Tokaj Kossuth út 39.','1980-08-11',44),
('tamas','Antal Tamás','tamás.antal@mail.hu','4440 Tiszavasvári Posta köz 2.','1984-09-05',40),
('TAMASF','Fényes Tamás','TAMASF@gmail.com','9023 Győr Arany János utca 1.','1997-11-06',27),
('tibor','Gombos Tibor','tibor.gombos@mail.hu','7100 Szekszárd Kossuth utca 77.','1993-11-28',31),
('tibor2','Dániel Tibor','tibor2@gmail.com','6646 Tömörkény Árpád utca 23.','1985-02-02',39),
('tihamer','Kazy Tihamér','tihamér.kazy@mail.hu','2370 Dabas Fő utca 60.','1991-07-05',33),
('timea','Papós Tímea','timea@gmail.com','1035 Budapest  Kossuth út 77.','1996-01-08',28),
('timea2','Dusha Tímea','tímea.dusha@mail.hu','5920 Csorvás Kossuth utca 8.','1975-08-22',49),
('tunde','Turcsik Tünde','tunde@gmail.com','7130 Tolna Fő út 122.','1974-02-12',50),
('valentin','Feró Valentin','valentin.feró@mail.hu','3895 Gönc Búvár utca 4.','1986-01-09',38),
('veronika4','Tankó Veronika','veronika4@gmail.com','6412 Balotaszállás Rendeki utca 21.','1983-08-28',41),
('VIKTORIAU','Urbán Viktoria','viktoria.urbán@mail.hu','3860 Encs Népboltsor  2.','1996-05-03',28),
('VIKTORK','Keresztúri Viktor','viktor.keresztúri@mail.hu','2532 Tokodaltáró Nagy Lajos tér 4.','1989-05-05',35),
('vivien3','Boros Vivien','vivien3@gmail.com','2117 Isaszeg Fő út 122.','1991-07-01',33),
('zoltan','Fodor Zoltán','zoltán.fodor@mail.hu','3441 Mezőkeresztes Fő utca 23.','1979-11-25',45),
('zoltan4','Barna Zoltán','zoltan4@gmail.com','8313 Balatongyörök Jászai tér 21.','1986-05-20',38),
('ZOLTANP','Pintér Zoltán','zoltán.pintér@mail.hu','6050 Lajosmizse Fő út 18.','1977-06-07',47),
('ZOLTANT','Tóth Zoltán','zoltán.tóth@mail.hu','4244 Újfehértó Posta köz 2.','1985-12-14',39),
('zsofi1','Molnár Zsófi','zsofi1@gmail.com','2730 Albertirsa Árpád utca 23.','1983-11-17',41),
('zsolt1','Pulai Zsolt','zsolt.pulai@mail.hu','8391 Sármellék Fő utca 60.','1988-05-27',36),
('ZSOLTJ','Józsa Zsolt','ZSOLTJ@gmail.com','8315 Gyenesdiás Bajcsy-Zsilinszky utca 4.','1983-09-29',41),
('zsuzsa','Pusztai Zsuzsanna','zsuzsanna@gmail.com','6783 Ásotthalom Badacsonyi utca 12.','1980-09-17',44),
('zsuzsa3','Varsányi Zsuzsa','zsuzsa.varsányi@mail.hu','8600 Siófok Árpád utca 4.','1979-03-06',45),
('zsuzsanna','Barta Zsuzsanna','zsuzsanna.barta@mail.hu','4172 Biharnagybajom Dózsa György utca 37.','1994-10-07',30),
('ZSUZSAV','Vajda Zsuzsa','zsuzsa.vajda@mail.hu','6786 Ruzsa Kossuth utca 77.','1976-12-11',48)
  
CREATE USER Nagyontitkos WITHOUT Login
GRANT SELECT ON Vendeg_Maszkolt TO Nagyontitkos

EXECUTE AS User = 'Nagyontitkos'
SELECT * FROM Vendeg_Maszkolt
REVERT