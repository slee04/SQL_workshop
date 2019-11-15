/* insert statments for subset of database*/

/*film table*/
INSERT INTO film VALUES (133, 'CHAMBER ITALIAN', 'A Fateful Reflection of a Moose And a Husband who must Overcome a Monkey in Nigeria', 2006, 1, NULL, 7, 4.99, 117, 14.99, 'NC-17', '2017-09-10 17:46:03.905795', '{Trailers}', '''chamber'':1 ''fate'':4 ''husband'':11 ''italian'':2 ''monkey'':16 ''moos'':8 ''must'':13 ''nigeria'':18 ''overcom'':14 ''reflect'':5');

/*category table*/

INSERT INTO category VALUES (12, 'Music', '2017-02-15 09:46:27');

/*film_category table*/

INSERT INTO film_category VALUES (133, 12, '2017-02-15 10:07:09');

/*language table */

INSERT INTO language VALUES (1, 'English             ', '2017-02-15 10:02:19')

/*inventory table*/

INSERT INTO inventory VALUES (612, 133, '2017-02-15 10:09:17');

/*rental table*/

INSERT INTO rental VALUES (4321, '2005-07-07 17:52:38', 612, 91, '2005-07-11 23:37:38', '2017-02-16 02:30:53');
INSERT INTO rental VALUES (9481, '2005-07-30 23:26:05', 613, 481, '2005-08-04 17:46:05', '2017-02-16 02:30:53');
INSERT INTO rental VALUES (10137, '2005-07-31 22:01:41', 612, 236, '2005-08-07 22:24:41', '2017-02-16 02:30:53');
INSERT INTO rental VALUES (11710, '2005-08-17 07:29:44', 613, 553, '2005-08-19 02:06:44', '2017-02-16 02:30:53');
INSERT INTO rental VALUES (14741, '2017-02-14 15:16:03', 612, 60, NULL, '2017-02-16 02:30:53');

/*customer table*/

INSERT INTO customer VALUES (91, 'LOIS', 'BUTLER', 'LOIS.BUTLER@sakilacustomer.org', true, '2017-02-14', '2017-02-15 09:57:20', 1);
INSERT INTO customer VALUES (236, 'MARCIA', 'DEAN', 'MARCIA.DEAN@sakilacustomer.org', true, '2017-02-14', '2017-02-15 09:57:20', 1);
INSERT INTO customer VALUES (60, 'MILDRED', 'BAILEY', 'MILDRED.BAILEY@sakilacustomer.org', true, '2017-02-14', '2017-02-15 09:57:20', 1);
INSERT INTO customer VALUES (481, 'HERMAN', 'DEVORE', 'HERMAN.DEVORE@sakilacustomer.org', true, '2017-02-14', '2017-02-15 09:57:20', 1);
INSERT INTO customer VALUES (553, 'MAX', 'PITT', 'MAX.PITT@sakilacustomer.org', true, '2017-02-14', '2017-02-15 09:57:20', 1);
