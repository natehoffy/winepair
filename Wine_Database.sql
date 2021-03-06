-- --------------------------------------------------------------------------------------------------------
-- First, create the Wine database
-- --------------------------------------------------------------------------------------------------------

CREATE DATABASE Wine;

-- --------------------------------------------------------------------------------------------------------
-- /* Create Colors table */
-- --------------------------------------------------------------------------------------------------------

DROP TABLE IF EXISTS Colors;

CREATE TABLE IF NOT EXISTS Colors (
	Color_Code INT NOT NULL auto_increment,
	Color_Name VARCHAR(10) NOT NULL,

	PRIMARY KEY (Color_Code)
);

# DESCRIBE Colors;

-- --------------------------------------------------------------------------------------------------------
-- /* Insert data into the Colors table */
-- --------------------------------------------------------------------------------------------------------

insert into colors (color_name)
	values
		('White'),
		('Red'),
		('Rose');

select * from colors;

-- --------------------------------------------------------------------------------------------------------
-- Create Country table
-- --------------------------------------------------------------------------------------------------------

DROP TABLE IF EXISTS Country;

CREATE TABLE IF NOT EXISTS Country (
	Country_Code_Num INT NOT NULL,
	Country_Code_Alpha2 CHAR(2) NOT NULL,
	Country_Code_Alpha3 CHAR(3) NOT NULL,
	Country_Name VARCHAR(50) NOT NULL,

	PRIMARY KEY (Country_Code_Num),
	UNIQUE INDEX (Country_Code_Num),
	UNIQUE INDEX (Country_Code_Alpha2),
	UNIQUE INDEX (Country_Code_Alpha3),
	UNIQUE INDEX (Country_Name)
);

# DESCRIBE Country;

-- --------------------------------------------------------------------------------------------------------
-- Insert data into Country table
-- --------------------------------------------------------------------------------------------------------

insert into country (country_code_num,country_code_alpha2,country_code_alpha3,country_name)
	values
		(004,'AF','AFG','Afghanistan'),
		(248,'AX','ALA','Åland Islands'),
		(008,'AL','ALB','Albania'),
		(012,'DZ','DZA','Algeria'),
		(016,'AS','ASM','American Samoa'),
		(020,'AD','AND','Andorra'),
		(024,'AO','AGO','Angola'),
		(660,'AI','AIA','Anguilla'),
		(010,'AQ','ATA','Antarctica'),
		(028,'AG','ATG','Antigua and Barbuda'),
		(032,'AR','ARG','Argentina'),
		(051,'AM','ARM','Armenia'),
		(533,'AW','ABW','Aruba'),
		(036,'AU','AUS','Australia'),
		(040,'AT','AUT','Austria'),
		(031,'AZ','AZE','Azerbaijan'),
		(044,'BS','BHS','Bahamas'),
		(048,'BH','BHR','Bahrain'),
		(050,'BD','BGD','Bangladesh'),
		(052,'BB','BRB','Barbados'),
		(112,'BY','BLR','Belarus'),
		(056,'BE','BEL','Belgium'),
		(084,'BZ','BLZ','Belize'),
		(204,'BJ','BEN','Benin'),
		(060,'BM','BMU','Bermuda'),
		(064,'BT','BTN','Bhutan'),
		(068,'BO','BOL','Bolivia'),
		(535,'BQ','BES','Bonaire, Sint Eustatues and Saba'),
		(070,'BA','BIH','Bosnia and Herzegovina'),
		(072,'BW','BWA','Botswana'),
		(074,'BV','BVT','Bouvet Island'),
		(076,'BR','BRA','Brazil'),
		(086,'IO','IOT','British Indian Ocean Territory'),
		(096,'BN','BRN','Brunei Darussalam'),
		(100,'BG','BGR','Bulgaria'),
		(854,'BF','BFA','Burkina Faso'),
		(108,'BI','BDI','Burundi'),
		(132,'CV','CPV','Cabo Verde'),
		(116,'KH','KHM','Camboadia'),
		(120,'CM','CMR','Cameroon'),
		(124,'CA','CAN','Canada'),
		(136,'KY','CYM','Cayman Islands'),
		(140,'CF','CAF','Central African Republic'),
		(148,'TD','TCD','Chad'),
		(152,'CL','CHL','Chile'),
		(156,'CN','CHN','China'),
		(162,'CX','CXR','Christmas Island'),
		(166,'CC','CCK','Cocos Islands'),
		(170,'CO','COL','Colombia'),
		(174,'KM','COM','Comoros'),
		(180,'CD','COD','Democratic Republic of Congo'),
		(178,'CG','COG','Congo'),
		(184,'CK','COK','Cook Islands'),
		(188,'CR','CRI','Costa Rica'),
		(384,'CI','CIV','Ivory Coast'),
		(191,'HR','HRV','Croatia'),
		(192,'CU','CUB','Cuba'),
		(531,'CW','CUW','Curacao'),
		(196,'CY','CYP','Cyprus'),
		(203,'CZ','CZE','Czechia'),
		(208,'DK','DNK','Denmark'),
		(262,'DJ','DJI','Djibouti'),
		(212,'DM','DMA','Dominica'),
		(214,'DO','DOM','Dominican Republic'),
		(218,'EC','ECU','Ecuador'),
		(818,'EG','EGY','Egypt'),
		(222,'SV','SLV','El Salvador'),
		(226,'GQ','GNQ','Equatorial Guinea'),
		(232,'ER','ERI','Eritrea'),
		(233,'EE','EST','Estonia'),
		(231,'ET','ETH','Ethiopia'),
		(238,'FK','FLK','Falkland Islands'),
		(234,'FO','FRO','Faroe Islands'),
		(242,'FJ','FJI','Fiji'),
		(246,'FI','FIN','Finland'),
		(250,'FR','FRA','France'),
		(254,'GF','GUF','French Guiana'),
		(258,'PF','PYF','French Polynesia'),
		(260,'TF','ATF','French Souther Territories'),
		(266,'GA','GAB','Gabon'),
		(270,'GM','GMB','Gambia'),
		(268,'GE','GEO','Georgia'),
		(276,'DE','DEU','Germany'),
		(288,'GH','GHA','Ghana'),
		(292,'GI','GIB','Gibraltar'),
		(300,'GR','GRC','Greece'),
		(304,'GL','GRL','Greenland'),
		(308,'GD','GRD','Grenada'),
		(312,'GP','GLP','Guadeloupe'),
		(316,'GU','GUM','Guam'),
		(320,'GT','GTM','Guatemala'),
		(831,'GG','GGY','Guernsey'),
		(324,'GN','GIN','Guinea'),
		(624,'GW','GNB','Guinea-Bissau'),
		(328,'GY','GUY','Guyana'),
		(332,'HT','HTI','Haiti'),
		(334,'HM','HMD','Heard Island and McDonald Islands'),
		(336,'VA','VAT','Holy See'),
		(340,'HN','HND','Honduras'),
		(344,'HK','HKG','Hong Kong'),
		(348,'HU','HUN','Hungary'),
		(352,'IS','ISL','Iceland'),
		(356,'IN','IND','India'),
		(360,'ID','IDN','Indonesia'),
		(364,'IR','IRN','Iran'),
		(368,'IQ','IRQ','Iraq'),
		(372,'IE','IRL','Ireland'),
		(833,'IM','IMN','Isle of Man'),
		(376,'IL','ISR','Israel'),
		(380,'IT','ITA','Italy'),
		(388,'JM','JMA','Jamaica'),
		(392,'JP','JPN','Japan'),
		(832,'JE','JEY','Jersey'),
		(400,'JO','JOR','Jordan'),
		(398,'KZ','KAZ','Kazakhstan'),
		(404,'KE','KEN','Kenya'),
		(296,'KI','KIR','Kiribati'),
		(408,'KP','PRK','North Korea'),
		(410,'KR','KOR','South Korea'),
		(414,'KW','KWT','Kuwait'),
		(417,'KG','KGZ','Kyrgyzstan'),
		(418,'LA','LAO','Laos'),
		(428,'LV','LVA','Latvia'),
		(422,'LB','LBN','Lebanon'),
		(426,'LS','LSO','Lesotho'),
		(430,'LR','LBR','Liberia'),
		(434,'LY','LBY','Libya'),
		(438,'LI','LIE','Liechtenstein'),
		(440,'LT','LTU','Lithuania'),
		(442,'LU','LUX','Luxembourg'),
		(446,'MO','MAC','Macao'),
		(807,'MK','MKD','Macedonia'),
		(450,'MG','MDG','Madagascar'),
		(454,'MW','MWI','Malawi'),
		(458,'MY','MYS','Malaysia'),
		(462,'MV','MDV','Maldives'),
		(466,'ML','MLI','Mali'),
		(470,'MT','MLT','Malta'),
		(584,'MH','MHL','Marshall Islands'),
		(474,'MQ','MTQ','Martinique'),
		(478,'MR','MRT','Mauritania'),
		(480,'MU','MUS','Mauritius'),
		(175,'YT','MYT','Mayotte'),
		(484,'MX','MEX','Mexico'),
		(583,'FM','FSM','Micronesia'),
		(498,'MD','MDA','Moldova'),
		(492,'MC','MCO','Monaco'),
		(496,'MN','MNG','Mongolia'),
		(499,'ME','MNE','Montenegro'),
		(500,'MS','MSR','Montserrat'),
		(504,'MA','MAR','Morocco'),
		(508,'MZ','MOZ','Mozambique'),
		(104,'MM','MMR','Myanmar'),
		(516,'NA','NAM','Namibia'),
		(520,'NR','NRU','Nauru'),
		(524,'NP','NPL','Nepal'),
		(528,'NL','NLD','Netherlands'),
		(540,'NC','NCL','New Caledonia'),
		(554,'NZ','NZL','New Zealand'),
		(558,'NI','NIC','Nicaragua'),
		(562,'NE','NER','Niger'),
		(566,'NG','NGA','Nigeria'),
		(570,'NU','NIU','Niue'),
		(574,'NF','NFK','Norfolk Island'),
		(580,'MP','MNP','Northern Mariana Islands'),
		(578,'NO','NOR','Norway'),
		(512,'OM','OMN','Oman'),
		(586,'PK','PAK','Pakistan'),
		(585,'PW','PLW','Palau'),
		(275,'PS','PSE','Palestine'),
		(591,'PA','PAN','Panama'),
		(598,'PG','PNG','Papua New Guinea'),
		(600,'PY','PRY','Paraguay'),
		(604,'PE','PER','Peru'),
		(608,'PH','PHL','Philippines'),
		(612,'PN','PCN','Pitcairn'),
		(616,'PL','POL','Poland'),
		(620,'PT','PRT','Portugal'),
		(630,'PR','PRI','Puerto Rico'),
		(634,'QA','QAT','Qatar'),
		(638,'RE','REU','Reunion'),
		(642,'RO','ROU','Romania'),
		(643,'RU','RUS','Russia'),
		(646,'RW','RWA','Rwanda'),
		(652,'BL','BLM','Saint Barthelemy'),
		(654,'SH','SHN','Saint Helena'),
		(659,'KN','KNA','Saint Kitts and Nevis'),
		(662,'LC','LCA','Saint Lucia'),
		(663,'MF','MAF','Saint Martin'),
		(666,'PM','SPM','Saint Pierre and Miquelon'),
		(670,'VC','VCT','Saint Vincent and the Grenadines'),
		(882,'WS','WSM','Samoa'),
		(674,'SM','SMR','San Marino'),
		(678,'ST','STP','Sao Tome and Principe'),
		(682,'SA','SAU','Saudi Arabia'),
		(686,'SN','SEN','Senegal'),
		(688,'RS','SRB','Serbia'),
		(690,'SC','SYC','Seychelles'),
		(694,'SL','SLE','Sierra Leone'),
		(702,'SG','SGP','Singapore'),
		(534,'SX','SXM','Sint Maarten'),
		(703,'SK','SVK','Slovakia'),
		(705,'SI','SVN','Slovenia'),
		(090,'SB','SLB','Solomon Islands'),
		(706,'SO','SOM','Somalia'),
		(710,'ZA','ZAF','South Africa'),
		(239,'GS','SGS','South Georgia and the South Sandwich Islands'),
		(728,'SS','SSD','South Sudan'),
		(724,'ES','ESP','Spain'),
		(144,'LK','LKA','Sri Lanka'),
		(729,'SD','SDN','Sudan'),
		(740,'SR','SUR','Suriname'),
		(744,'SJ','SJM','Svalbard and Jan Mayen'),
		(748,'SZ','SWZ','Swaziland'),
		(752,'SE','SWE','Sweden'),
		(756,'CH','CHE','Switzerland'),
		(760,'SY','SYR','Syria'),
		(158,'TW','TWN','Taiwan'),
		(762,'TJ','TJK','Tajikistan'),
		(834,'TZ','TZA','Tanzania'),
		(764,'TH','THA','Thailand'),
		(626,'TL','TLS','Timor-Leste'),
		(768,'TG','TGO','Togo'),
		(772,'TK','TKL','Tokelau'),
		(776,'TO','TON','Tonga'),
		(780,'TT','TTO','Trinidad and Tobago'),
		(788,'TN','TUN','Tunisia'),
		(792,'TR','TUR','Turkey'),
		(795,'TM','TKM','Turkmenistan'),
		(796,'TC','TCA','Turks and Caicos'),
		(798,'TV','TUV','Tuvalu'),
		(800,'UG','UGA','Uganda'),
		(804,'UA','UKR','Ukraine'),
		(784,'AE','ARE','United Arab Emirates'),
		(826,'GB','GBR','United Kingdom'),
		(581,'UM','UMI','United States Minor Outlying Islands'),
		(840,'US','USA','United States of America'),
		(858,'UY','URY','Uruguay'),
		(860,'UZ','UZB','Uzbekistan'),
		(548,'VU','VUT','Vanuatu'),
		(862,'VE','VEN','Venezuela'),
		(704,'VN','VNM','Viet Nam'),
		(092,'VG','VGB','British Virgin Islands'),
		(850,'VI','VIR','U.S. Virgin Islands'),
		(876,'WF','WLF','Wallis and Futuna'),
		(732,'EH','ESH','Western Sahara'),
		(887,'YE','YEM','Yemen'),
		(894,'ZM','ZMB','Zambia'),
		(716,'ZW','ZWE','Zimbabwe');


-- --------------------------------------------------------------------------------------------------------
-- Create Occasion table
-- --------------------------------------------------------------------------------------------------------

DROP TABLE IF EXISTS Occasion;

CREATE TABLE IF NOT EXISTS Occasion (
	Occasion_Code INT NOT NULL,
	Occasion_Name VARCHAR(50),
	Occasion_Type VARCHAR(50) NOT NULL,

	PRIMARY KEY (Occasion_Code)
);

# DESCRIBE Occasion;

-- --------------------------------------------------------------------------------------------------------
-- Insert data into the Occasion table
-- --------------------------------------------------------------------------------------------------------
insert into occasion (occasion_name,occasion_type)
	values
		('21st Birthday','Personal Highlight'),
		('We are Pregnant!','Personal Highlight'),
		('Baby Shower','Personal Highlight'),
		('Birth of a Child','Personal Highlight'),
		('Baptism','Personal Highlight'),
		('30th Birthday','Personal Highlight'),
		('40th Birthday','Personal Highlight'),
		('50th Birthday','Personal Highlight'),
		('60th Birthday','Personal Highlight'),
		('70th Birthday','Personal Highlight'),
		('80th Birthday','Personal Highlight'),
		('90th Birthday','Personal Highlight'),
		('100th Birthday','Personal Highlight'),
		('First Date','Love Life'),
		('Valentine','Love Life'),
		('Blind Date','Love Life'),
		('The Proposal','Love Life'),
		('Bachelor Party','Love Life'),
		('Coming-Out Party','Love Life'),
		('Bachelorette Party','Love Life'),
		('Rehearsal Dinner','Love Life'),
		('Wedding','Love Life'),
		('Honeymoon','Love Life'),
		('Splitting Up','Love Life'),
		('Renewal of Vows','Love Life'),
		('Silver Wedding Anniversary','Love Life'),
		('Pearl Wedding Anniversary','Love Life'),
		('Ruby Wedding Anniversary','Love Life'),
		('Golden Wedding Anniversary','Love Life'),
		('Diamond Wedding Anniversary','Love Life'),
		('Graduation','Personal Highlight'),
		('First Job','Personal Highlight'),
		('Bad Day at the Office','Work'),
		('New Job','Work'),
		('Courting the Client','Work'),
		('Promotion','Work'),
		('Done Deal','Work'),
		('Impressing Yor Boss','Work'),
		('Moving On','Work'),
		('Hosting Colleagues','Work'),
		('Team Building','Work'),
		('Retirement','Work'),
		('Chinese New Year','Holiday'),
		('Easter','Holiday'),
		('Mother Day','Holiday'),
		('Father Day','Holiday'),
		('Fourth of July','Holiday'),
		('Thanksgiving','Holiday'),
		('Election Night','Holiday'),
		('Hanukkah','Holiday'),
		('Christmas Eve','Holiday'),
		('Christmas Morning','Holiday'),
		('Christmas Dinner','Holiday'),
		('New Year Eve','Holiday'),
		('New Year Day','Holiday'),
		('Pre-game','Night Out'),
		('Steak House','Night Out'),
		('Seafood Restaurant','Night Out'),
		('Mexican Restaurant','Night Out'),
		('Italian Restaurant','Night Out'),
		('Spanish Restaurant','Night Out'),
		('Chinese Restaurant','Night Out'),
		('Thai Restaurant','Night Out'),
		('Japanese Restaurant','Night Out'),
		('French Restaurant','Night Out'),
		('Organic Restaurant','Night Out'),
		('Neighborhood Bar','Night Out'),
		('Vegetarian Restaurant','Night Out'),
		('Night Cap','Night Out'),
		('Unexpected Guests','Entertaining'),
		('Bad Neighbor','Entertaining'),
		('Organic Guest','Entertaining'),
		('Asthamtic Guest','Entertaining'),
		('The In-Laws','Entertaining'),
		('Neighborhood Party','Entertaining'),
		('Liberal Guest','Entertaining'),
		('Wine Geek','Entertaining'),
		('Conservative Guest','Entertaining'),
		('Wine Snob','Entertaining'),
		('Friend who Hates Wine','Entertaining'),
		('You as a guest','Entertaining'),
		('Spring','Daily Life'),
		('Camping','Daily Life'),
		('Summer','Daily Life'),
		('Beach','Daily Life'),
		('Pool','Daily Life'),
		('Weekday Night at Home','Daily Life'),
		('Saturday Night in with Friends','Daily Life'),
		('Firing Up the Grill','Daily Life'),
		('First Night in Your New Home','Daily Life'),
		('Picnic','Daily Life'),
		('Skiing','Daily Life'),
		('Sunday Brunch','Daily Life'),
		('Fall','Daily Life'),
		('Boys Night','Daily Life'),
		('Girls Night','Daily Life'),
		('Winter','Daily Life'),
		('On a Cruise','Daily Life'),
		('Big Decision Making','Daily Life'),
		('Making Amends','Daily Life');


-- --------------------------------------------------------------------------------------------------------
-- Create Appellation table
-- --------------------------------------------------------------------------------------------------------

DROP TABLE IF EXISTS Appellation;

CREATE TABLE IF NOT EXISTS Appellation (
	Appellation_Code INT NOT NULL auto_increment,
	Appellation_Name VARCHAR(1000) NOT NULL,
	Appellation_Country_Code_Num INT NOT NULL,
	Appellation_Country_Code_Alpha2 CHAR(2) NOT NULL,
	Appellation_Country_Code_Alpha3 CHAR(3) NOT NULL,

	PRIMARY KEY (Appellation_Code),
	UNIQUE INDEX (Appellation_Country_Code_Num),
	UNIQUE INDEX (Appellation_Country_Code_Alpha2),
	UNIQUE INDEX (Appellation_Country_Code_Alpha3),
	UNIQUE INDEX (Appellation_Name),
	UNIQUE INDEX (Appellation_Code),

	FOREIGN KEY (Appellation_Country_Code_Num) REFERENCES Country(Country_Code_Num) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (Appellation_country_Code_Alpha2) REFERENCES Country(Country_Code_Alpha2) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (Appellation_Country_Code_Alpha3) REFERENCES Country(Country_Code_Alpha3) ON DELETE CASCADE ON UPDATE CASCADE
);

# DESCRIBE Appellation;

-- --------------------------------------------------------------------------------------------------------
-- Insert data into Appellation table
-- --------------------------------------------------------------------------------------------------------

insert into appellation (appellation_name,appellation_country_code_num,appellation_country_code_alpha2,appellation_country_code_alpha3)
	values
		('Olifants River',(select country_code_num from country where country_name = 'South Africa'),(select country_code_alpha2 from country where country_name = 'South Africa'),(select country_code_alpha3 from country where country_name = 'South Africa')),
		('Orange River',(select country_code_num from country where country_name = 'South Africa'),(select country_code_alpha2 from country where country_name = 'South Africa'),(select country_code_alpha3 from country where country_name = 'South Africa')),
		('Klein Karoo',(select country_code_num from country where country_name = 'South Africa'),(select country_code_alpha2 from country where country_name = 'South Africa'),(select country_code_alpha3 from country where country_name = 'South Africa')),
		('Breede River Valley',(select country_code_num from country where country_name = 'South Africa'),(select country_code_alpha2 from country where country_name = 'South Africa'),(select country_code_alpha3 from country where country_name = 'South Africa')),
		('Cape South Coast',(select country_code_num from country where country_name = 'South Africa'),(select country_code_alpha2 from country where country_name = 'South Africa'),(select country_code_alpha3 from country where country_name = 'South Africa')),
		('Coastal Region',(select country_code_num from country where country_name = 'South Africa'),(select country_code_alpha2 from country where country_name = 'South Africa'),(select country_code_alpha3 from country where country_name = 'South Africa')),
		('Sonoita AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Wilcox AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Altus AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Arkansas Mountain AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Ozark Mountain AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Arroyo Grande Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Arroyo Seco AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Ballard Canyon',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Ben Lomond Mountain AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Carmel Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Central Coast AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Chalone AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Cienega Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Edna Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Hames Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Happy Canyon of Santa Barbara AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Lamorinda AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Lime Kiln Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Livermore Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Monterey AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Mt. Harlan AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Pacheco Pass AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Paicines AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Paso Robles AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('San Antonio Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('San Benito AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('San Bernabe AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('San Francisco Bay AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('San Lucas AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('San Ysidro District AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Santa Clara Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Santa Cruz Mountains AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Santa Lucia Highlands AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Santa Maria Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Sta. Rita Hills AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Santa Ynez Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('York Mountain AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Alta Mesa AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Borden Ranch AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Capay Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Clarksburg AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Clement Hills AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Cosumnes River AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Diablo Grande AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Dunnigan Hills AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Jahant AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Lodi AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Madera AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Merritt Island AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Mokelumne River AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('River Junction AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Salado Creek AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Sloughhouse AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Tracy Hills AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Seiad Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Trinity Lakes AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Willow Creek AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Alexander Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Anderson Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Atlas Peak AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Bennett Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Benmore Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Big Valley Lake County AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Calistoga AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Chalk Hill AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Chiles Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Clear Lake AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Cole Ranch AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Coombsville AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Covelo AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Diamond Mountain District AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Dos Rios AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Dry Creek Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Fort Ross-Seaview AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Fountaingrove District AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Green Valley of Russian River Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Guenoc Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('High Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Howell Mountain AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Kelsey Bench-Lake AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Knights Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Los Carneros AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('McDowell Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Mendocino Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Mendocino Ridge AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Moon Mountain District Sonoma County',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Mt. Veeder AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Napa Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('North Coast AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Northern Sonoma AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Oak Knoll District of Napa Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Oakville AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Petaluma GAP AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Pine Mountain-Cloverdale AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Potter Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Red Hills Lake County AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Redwood Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Rockpile AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Russian River Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Rutherford AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Solano County Green Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Sonoma Coast AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Sonoma Mountain AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Sonoma Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Spring Mountain District AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('St. Helena AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Stags Leap District AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Suisun Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Wild Horse Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Yorkville Highlands AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Yountville AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('California Shenandoah Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('El Dorado AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Fair Play AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Fiddletown AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('North Yuba AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Sierra Foothills AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Manton Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Antelope Valley of the California High Desert AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Cucamonga Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Leona Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Malibu-Newton Canyon AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Malibu Coast AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Ramona Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Saddle Rock-Malibu AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('San Pasqual Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Sierra Pelona Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('South Coast AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Temecula Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Grand Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('West Elks AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Southeastern New England AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Western Connecticut Highlands AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Upper Hiwassee Highlands AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Snake River Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Eagle Foothills AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Lewis-Clark Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Shawnee Hills AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Upper Mississippi River Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Indiana Uplands AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Ohio River Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Mississippi Delta AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Catoctin AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Cumberland Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Linganore AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Marthas Vineyard AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Fennville AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Lake Michigan Shore AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Leelanau Peninsula AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Old Mission Peninsula AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Tip of the Mitt AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Alexandria Lakes AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Augusta AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Hermann AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Ozark Highlands AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Central Delaware Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Outer Coastal Plain AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Warren Hills AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Mesilla Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Middle Rio Grande Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Mimbres Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Cayuga Lake AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Finger Lakes AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Hudson River Region AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Lake Erie AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Long Island AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Niagara Escarpment AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('North Fork of Long Island AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Seneca Lake AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('The Hamptons, Long Island AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Upper Hudson AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Appalachian High Country AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Haw River Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Swan Creek AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Yadkin Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Grand River Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Isle St. George AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Loramie Creek AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Applegate Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Chehalem Mountains AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Columbia Gorge AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Columbia Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Dundee Hills AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Elkton, Oregon',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Eola-Amity Hills AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('McMinnville AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Red Hill Douglas County, Oregon AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Ribbon Ridge AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Rogue Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Southern Oregon AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('The Rocks District of Milton-Freewater AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Umpqua Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Walla Walla Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Willamette Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Yamhill-Carlton District AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Lancaster AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Lehigh Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Bell Mountain AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Escondido Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Fredericksburg in the Texas Hill Country AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Texas Davis Mountains AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Texas High Plains AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Texas Hill Country AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Texoma AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Middleburg AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Monticello AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('North Fork of Roanoke AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Northern Neck George Washington Birthplace AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Rocky Knob AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Shenandoah Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Virginias Eastern Shore AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Ancient Lakes AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Horse Heaven Hills AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Lake Chelan AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Naches Heights AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Puget Sound AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Rattlesnake Hills AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Red Mountain AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Snipes Mountain AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Wahluke Slope AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Yakima Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Kanawha River Valley AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Lake Wisconsin AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Wisconsin Ledge AVA',(select country_code_num from country where country_name = 'United States of America'),(select country_code_alpha2 from country where country_name = 'United States of America'),(select country_code_alpha3 from country where country_name = 'United States of America')),
		('Weinviertel DAC',(select country_code_num from country where country_name = 'Austria'),(select country_code_alpha2 from country where country_name = 'Austria'),(select country_code_alpha3 from country where country_name = 'Austria')),
		('Mittelburgenland DAC',(select country_code_num from country where country_name = 'Austria'),(select country_code_alpha2 from country where country_name = 'Austria'),(select country_code_alpha3 from country where country_name = 'Austria')),
		('Traisental DAC',(select country_code_num from country where country_name = 'Austria'),(select country_code_alpha2 from country where country_name = 'Austria'),(select country_code_alpha3 from country where country_name = 'Austria')),
		('Kremstal DAC',(select country_code_num from country where country_name = 'Austria'),(select country_code_alpha2 from country where country_name = 'Austria'),(select country_code_alpha3 from country where country_name = 'Austria')),
		('Kamptal DAC',(select country_code_num from country where country_name = 'Austria'),(select country_code_alpha2 from country where country_name = 'Austria'),(select country_code_alpha3 from country where country_name = 'Austria')),
		('Leithaberg DAC',(select country_code_num from country where country_name = 'Austria'),(select country_code_alpha2 from country where country_name = 'Austria'),(select country_code_alpha3 from country where country_name = 'Austria')),
		('Eisenberg DAC',(select country_code_num from country where country_name = 'Austria'),(select country_code_alpha2 from country where country_name = 'Austria'),(select country_code_alpha3 from country where country_name = 'Austria')),
		('Neusiedlersee DAC',(select country_code_num from country where country_name = 'Austria'),(select country_code_alpha2 from country where country_name = 'Austria'),(select country_code_alpha3 from country where country_name = 'Austria')),
		('Wiener Gemischter Satz DAC',(select country_code_num from country where country_name = 'Austria'),(select country_code_alpha2 from country where country_name = 'Austria'),(select country_code_alpha3 from country where country_name = 'Austria')),
		('Ajaccio AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Aloxe-Corton AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Alsace AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Alsace Grand Cru AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Anjou AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Anjou-Coteaux de la Loire AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Anjou-Gamay AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Anjou mousseux AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Anjou Villages AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Anjou Villages Brissac AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Arbois AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Auxey-Duresses AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bandol AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Banyuls AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Banyuls Grand Cru AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Barsac AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bâtard-Montrachet AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Béarn AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Beaujolais AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Beaujolais-Villages AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Beaumes de Venise AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Beaune AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bellet AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bergerac AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bergerac sec AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bergerac rosé AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bienvenues-Bâtard-Montrachet AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Blagny AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Blanquette de Limoux AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Blanquette méthode ancestrale AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Blaye AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bonnes-Mares AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bonnezeaux AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bordeaux AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bordeaux clairet AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bordeaux Côtes de Francs AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bordeaux Haut-Benauge AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bordeaux moelleux AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bordeaux rosé AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bordeaux sec AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bordeaux supérieur AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bourgogne AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bourgogne aligoté AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bourgogne clairet AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bourgogne clairet Côte chalonnaise AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bourgogne Coulanges-la-Vineuse AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bourgogne Côte Saint-Jacques AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bourgogne Coulanges-la-Vineuse AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bourgogne Côtes dAuxerre AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bourgogne Côtes du Couchois AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bourgogne Epineuil AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bourgogne grand ordinaire AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bourgogne Hautes-côtes de Beaune AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bourgogne Hautes-côtes de Nuits AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bourgogne La Chapelle Notre-Dame AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bourgogne le Chapitre AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bourgogne Montrecul AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bourgogne mousseux AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bourgogne ordinaire AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bourgogne Passe-tout-grains AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bourgogne Vézelay AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bourgogne rosé AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bourgueil AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bouzeron AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Brouilly AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Bugey AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Buzet AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Cabardes AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Cabernet dAnjou AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Cabernet de Saumur AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Cadillac AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Cahors AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Canon Fronsac AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Cassis AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Cérons AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Chablis AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Chablis Grand Cru AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Chablis Premier Cru AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Chambertin AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Chambertin-Clos-de-Beze AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Chambolle-Musigny AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Champagne AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Chapelle-Chambertin AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Charlemagne AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Charmes-Chambertin AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Chassagne-Montrachet AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Château-Chalon AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Château-Grillet AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Châteauneuf-du-Pape AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Châtillon-en-Diois AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Chaume AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Chénas AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Chevalier-Montrachet AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Cheverny AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Chinon AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Chiroubles AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Chorey-les-Beaune AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Clairette de Bellegarde AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Clairette de Die AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Clairette du Languedoc AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Clos des Lambrays AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Clos de la Roche AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Clos de Tart AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Clos de Vougeot AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Clos Saint-Denis AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Collioure AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Condrieu AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Corbieres AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Cornas AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Vin de Corse AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Corton AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Corton-Charlemagne AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Costières de Nîmes AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Côte de Beaune AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Côte de Beaune-Villages AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Côte de Brouilly AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Côte de Nuits-villages AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Côte Roannaise AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Côte-Rôtie AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Coteaux Champenois AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Coteaux dAix-en-Provence AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Coteaux de Die AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Coteaux de lAubance AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Coteaux de Pierrevert AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Coteaux du Giennois AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Coteaux du Languedoc AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Coteaux du Layon AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Coteaux du Loir AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Coteaux du Lyonnais AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Coteaux du Quercy AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Coteaux de Saumur AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Coteaux du Tricastin AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Coteaux du Vendômois AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Coteaux Varois AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Côtes de Bergerac AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Côtes de Bergerac Blanc AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Côtes de Blaye AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Côtes de Bordeaux Saint-Macaire AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Côtes de Bourg AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Côtes de Castillon AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Côtes de Duras AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Côtes du Forez AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Côtes de la Malepere AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Côtes de Millau AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Côtes de Montravel AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Côtes de Provence AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Côtes de Toul AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Côtes du Jura AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Côtes du Luberon AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Côtes du Marmandais AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Côtes du Rhône AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Côtes du Rhône Villages AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Côtes du Roussillon AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Côtes du Roussillon Villages AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Côtes du Ventoux AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Côtes du Vivarais AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Cour-Cheverny AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Crémant dAlsace AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Crémant de Bordeaux AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Crémant de Bourgogne AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Crémant de Die AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Crémant du Jura AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Crémant de Limoux AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Crémant de Loire AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Crépy AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Criots-Bâtard-Montrachet AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Crozes-Hermitage AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Échezeaux AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Entre-Deux-Mers AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Entre-Deux-Mers-Haut-Benauge AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Faugeres AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Fitou AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Fixin AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Fleurie AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Fronsac AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Frontignan AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Fronton AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Gaillac AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Gaillac Premieres Côtess AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Gevrey-Chambertin AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Gigondas AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Givry AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Grand Roussillon AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Graves AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Graves de Vayres AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Graves Supérieures AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Griotte-Chambertin AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Haut-Médoc AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Haut-Montravel AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Haut-Poitou AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Hermitage AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Irancy AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Irouléguy AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Jasnieres AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Juliénas AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Jurançon AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('LÉtoile AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Ladoix AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('La Grande Rue AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Lalande-de-Pomerol AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('La Romanée AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('La Tâche AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Latricieres-Chambertin AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Les Baux-de-Provence AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Limoux AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Lirac AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Listrac-Médoc AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Loupiac AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Lussac-Saint-Émilion AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Mâcon AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Mâcon supérieur AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Mâcon-villages AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Madiran AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Maranges AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Marcillac AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Margaux AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Marsannay AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Maury AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Mazis-Chambertin AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Mazoyeres-Chambertin AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Médoc AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Menetou-Salon AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Mercurey AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Meursault AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Minervois AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Minervois-La Liviniere AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Monbazillac AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Montagne Saint-Émilion AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Montagny AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Monthelie AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Montlouis AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Montrachet AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Montravel AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Morey-Saint-Denis AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Morgon AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Moulin a vent AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Moulis-en-Médoc AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Muscadet AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Muscadet-Coteaux de la Loire AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Muscadet-Côtes de Grandlieu AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Muscadet-Sevre et Maine AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Muscat de Beaumes-de-Venise AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Muscat de Frontignan AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Muscat de Lunel AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Muscat de Mireval AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Muscat de Rivesaltes AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Muscat de Saint-Jean de Minervois AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Musigny AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Néac AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Nuits-Saint-Georges AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Orléans AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Orléans-Cléry AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Pacherenc du Vic-Bilh AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Pacherenc du Vic-Bilh Sec AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Palette AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Patrimonio AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Pauillac AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Pécharmant AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Pernand-Vergelesses AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Pessac-Léognan AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Petit Chablis AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Pomerol AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Pommard AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Pouilly-Fuissé AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Pouilly-Fumé AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Pouilly-Loché AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Pouilly-sur-Loire AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Pouilly-Vinzelles AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Premieres Côtes de Blaye AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Premieres Côtes de Bordeaux AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Puisseguin Saint-Émilion AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Puligny-Montrachet AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Quarts de Chaume AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Quincy AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Régnié AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Reuilly AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Richebourg AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Rivesaltes AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Romanée-Conti AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Romanée-Saint-Vivant AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Rosé dAnjou AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Rosé de Loire AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Rosé des Riceys AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Rosette AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Roussette de Savoie AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Roussette du Bugey AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Ruchottes-Chambertin AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Rully AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Saint-Amour AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Saint-Aubin AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Saint-Bris AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Saint-Chinian AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Saint-Émilion AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Saint-Émilion Grand Cru AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Saint-Estephe AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Saint-Georges Saint-Émilion AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Saint-Joseph AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Saint-Julien AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Saint-Mont AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Saint-Nicolas-de-Bourgueil AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Saint-Péray AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Saint-Pourçain AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Saint-Romain AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Saint-Sardos AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Saint-Véran AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Sainte-Croix-du-Mont AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Sainte-Foy-Bordeaux AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Sancerre AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Santenay AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Saumur AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Saumur-Champigny AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Saumur mousseux AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Saussignac AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Sauternes AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Savennières AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Savennières-Coulée-de-Serrant AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Savennières-Roche-aux-Moines AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Savigny-les-Beaune AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Seyssel AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Tavel AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Tonnerre AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Touraine AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Touraine-Amboise AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Touraine-Azay-le-Rideau AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Touraine-Mesland AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Touraine Noble Joué AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Tursan AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Vacqueyras AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Valençay AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Vin de Savoie AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Vins dEntraygues et du Fel AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Vins dEstaing AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Vins Fins de la Côte de Nuits AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Viré-Clessé AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Vinsobres AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Volnay AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Volnay Santenots AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Vosne-Romanée AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Vougeot AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Vouvray AOC',(select country_code_num from country where country_name = 'France'),(select country_code_alpha2 from country where country_name = 'France'),(select country_code_alpha3 from country where country_name = 'France')),
		('Ahr',(select country_code_num from country where country_name = 'Germany'),(select country_code_alpha2 from country where country_name = 'Germany'),(select country_code_alpha3 from country where country_name = 'Germany')),
		('Baden',(select country_code_num from country where country_name = 'Germany'),(select country_code_alpha2 from country where country_name = 'Germany'),(select country_code_alpha3 from country where country_name = 'Germany')),
		('Franconia',(select country_code_num from country where country_name = 'Germany'),(select country_code_alpha2 from country where country_name = 'Germany'),(select country_code_alpha3 from country where country_name = 'Germany')),
		('Hessische Bergstraße',(select country_code_num from country where country_name = 'Germany'),(select country_code_alpha2 from country where country_name = 'Germany'),(select country_code_alpha3 from country where country_name = 'Germany')),
		('Mittelrhein',(select country_code_num from country where country_name = 'Germany'),(select country_code_alpha2 from country where country_name = 'Germany'),(select country_code_alpha3 from country where country_name = 'Germany')),
		('Mosel',(select country_code_num from country where country_name = 'Germany'),(select country_code_alpha2 from country where country_name = 'Germany'),(select country_code_alpha3 from country where country_name = 'Germany')),
		('Nahe',(select country_code_num from country where country_name = 'Germany'),(select country_code_alpha2 from country where country_name = 'Germany'),(select country_code_alpha3 from country where country_name = 'Germany')),
		('Palatinate',(select country_code_num from country where country_name = 'Germany'),(select country_code_alpha2 from country where country_name = 'Germany'),(select country_code_alpha3 from country where country_name = 'Germany')),
		('Rheingau',(select country_code_num from country where country_name = 'Germany'),(select country_code_alpha2 from country where country_name = 'Germany'),(select country_code_alpha3 from country where country_name = 'Germany')),
		('Rheinhessen',(select country_code_num from country where country_name = 'Germany'),(select country_code_alpha2 from country where country_name = 'Germany'),(select country_code_alpha3 from country where country_name = 'Germany')),
		('Saale-Unstrut',(select country_code_num from country where country_name = 'Germany'),(select country_code_alpha2 from country where country_name = 'Germany'),(select country_code_alpha3 from country where country_name = 'Germany')),
		('Saxony',(select country_code_num from country where country_name = 'Germany'),(select country_code_alpha2 from country where country_name = 'Germany'),(select country_code_alpha3 from country where country_name = 'Germany')),
		('Württemberg',(select country_code_num from country where country_name = 'Germany'),(select country_code_alpha2 from country where country_name = 'Germany'),(select country_code_alpha3 from country where country_name = 'Germany')),
		('Valle dAosta DOC',(select country_code_num from country where country_name = 'Italy'),(select country_code_alpha2 from country where country_name = 'Italy'),(select country_code_alpha3 from country where country_name = 'Italy')),
		('Piedmont DOC',(select country_code_num from country where country_name = 'Italy'),(select country_code_alpha2 from country where country_name = 'Italy'),(select country_code_alpha3 from country where country_name = 'Italy')),
		('Liguria DOC',(select country_code_num from country where country_name = 'Italy'),(select country_code_alpha2 from country where country_name = 'Italy'),(select country_code_alpha3 from country where country_name = 'Italy')),
		('Tuscany DOC',(select country_code_num from country where country_name = 'Italy'),(select country_code_alpha2 from country where country_name = 'Italy'),(select country_code_alpha3 from country where country_name = 'Italy')),
		('Elba DOC',(select country_code_num from country where country_name = 'Italy'),(select country_code_alpha2 from country where country_name = 'Italy'),(select country_code_alpha3 from country where country_name = 'Italy')),
		('Umbria DOC',(select country_code_num from country where country_name = 'Italy'),(select country_code_alpha2 from country where country_name = 'Italy'),(select country_code_alpha3 from country where country_name = 'Italy')),
		('Lazio DOC',(select country_code_num from country where country_name = 'Italy'),(select country_code_alpha2 from country where country_name = 'Italy'),(select country_code_alpha3 from country where country_name = 'Italy')),
		('Campania DOC',(select country_code_num from country where country_name = 'Italy'),(select country_code_alpha2 from country where country_name = 'Italy'),(select country_code_alpha3 from country where country_name = 'Italy')),
		('Basilicata DOC',(select country_code_num from country where country_name = 'Italy'),(select country_code_alpha2 from country where country_name = 'Italy'),(select country_code_alpha3 from country where country_name = 'Italy')),
		('Calabria DOC',(select country_code_num from country where country_name = 'Italy'),(select country_code_alpha2 from country where country_name = 'Italy'),(select country_code_alpha3 from country where country_name = 'Italy')),
		('Sicily DOC',(select country_code_num from country where country_name = 'Italy'),(select country_code_alpha2 from country where country_name = 'Italy'),(select country_code_alpha3 from country where country_name = 'Italy')),
		('Sardegna DOC',(select country_code_num from country where country_name = 'Italy'),(select country_code_alpha2 from country where country_name = 'Italy'),(select country_code_alpha3 from country where country_name = 'Italy')),
		('Puglia DOC',(select country_code_num from country where country_name = 'Italy'),(select country_code_alpha2 from country where country_name = 'Italy'),(select country_code_alpha3 from country where country_name = 'Italy')),
		('Molise DOC',(select country_code_num from country where country_name = 'Italy'),(select country_code_alpha2 from country where country_name = 'Italy'),(select country_code_alpha3 from country where country_name = 'Italy')),
		('Abruzzo DOC',(select country_code_num from country where country_name = 'Italy'),(select country_code_alpha2 from country where country_name = 'Italy'),(select country_code_alpha3 from country where country_name = 'Italy')),
		('Marche DOC',(select country_code_num from country where country_name = 'Italy'),(select country_code_alpha2 from country where country_name = 'Italy'),(select country_code_alpha3 from country where country_name = 'Italy')),
		('Emilia Romagna DOC',(select country_code_num from country where country_name = 'Italy'),(select country_code_alpha2 from country where country_name = 'Italy'),(select country_code_alpha3 from country where country_name = 'Italy')),
		('Veneto DOC',(select country_code_num from country where country_name = 'Italy'),(select country_code_alpha2 from country where country_name = 'Italy'),(select country_code_alpha3 from country where country_name = 'Italy')),
		('Friuli-Venezia Giulia DOC',(select country_code_num from country where country_name = 'Italy'),(select country_code_alpha2 from country where country_name = 'Italy'),(select country_code_alpha3 from country where country_name = 'Italy')),
		('Trentino Alto Adige DOC',(select country_code_num from country where country_name = 'Italy'),(select country_code_alpha2 from country where country_name = 'Italy'),(select country_code_alpha3 from country where country_name = 'Italy')),
		('Lombardy DOC',(select country_code_num from country where country_name = 'Italy'),(select country_code_alpha2 from country where country_name = 'Italy'),(select country_code_alpha3 from country where country_name = 'Italy')),
		('Vinho Verde DOC',(select country_code_num from country where country_name = 'Portugal'),(select country_code_alpha2 from country where country_name = 'Portugal'),(select country_code_alpha3 from country where country_name = 'Portugal')),
		('Tras-os-Montes DOC',(select country_code_num from country where country_name = 'Portugal'),(select country_code_alpha2 from country where country_name = 'Portugal'),(select country_code_alpha3 from country where country_name = 'Portugal')),
		('Porto and Douro DOC',(select country_code_num from country where country_name = 'Portugal'),(select country_code_alpha2 from country where country_name = 'Portugal'),(select country_code_alpha3 from country where country_name = 'Portugal')),
		('Tavora-Varosa DOC',(select country_code_num from country where country_name = 'Portugal'),(select country_code_alpha2 from country where country_name = 'Portugal'),(select country_code_alpha3 from country where country_name = 'Portugal')),
		('Bairrada DOC',(select country_code_num from country where country_name = 'Portugal'),(select country_code_alpha2 from country where country_name = 'Portugal'),(select country_code_alpha3 from country where country_name = 'Portugal')),
		('Dao and Lafoes DOC',(select country_code_num from country where country_name = 'Portugal'),(select country_code_alpha2 from country where country_name = 'Portugal'),(select country_code_alpha3 from country where country_name = 'Portugal')),
		('Beira Interior DOC',(select country_code_num from country where country_name = 'Portugal'),(select country_code_alpha2 from country where country_name = 'Portugal'),(select country_code_alpha3 from country where country_name = 'Portugal')),
		('Lisboa DOC',(select country_code_num from country where country_name = 'Portugal'),(select country_code_alpha2 from country where country_name = 'Portugal'),(select country_code_alpha3 from country where country_name = 'Portugal')),
		('Tejo DOC',(select country_code_num from country where country_name = 'Romania'),(select country_code_alpha2 from country where country_name = 'Romania'),(select country_code_alpha3 from country where country_name = 'Romania')),
		('Peninsula de Setubal DOC',(select country_code_num from country where country_name = 'Romania'),(select country_code_alpha2 from country where country_name = 'Romania'),(select country_code_alpha3 from country where country_name = 'Romania')),
		('Alentejo DOC',(select country_code_num from country where country_name = 'Romania'),(select country_code_alpha2 from country where country_name = 'Romania'),(select country_code_alpha3 from country where country_name = 'Romania')),
		('Algarve DOC',(select country_code_num from country where country_name = 'Romania'),(select country_code_alpha2 from country where country_name = 'Romania'),(select country_code_alpha3 from country where country_name = 'Romania')),
		('Azores DOC',(select country_code_num from country where country_name = 'Romania'),(select country_code_alpha2 from country where country_name = 'Romania'),(select country_code_alpha3 from country where country_name = 'Romania')),
		('Madeira DOC',(select country_code_num from country where country_name = 'Romania'),(select country_code_alpha2 from country where country_name = 'Romania'),(select country_code_alpha3 from country where country_name = 'Romania')),
		('Translyvania Highlands DOC',(select country_code_num from country where country_name = 'Romania'),(select country_code_alpha2 from country where country_name = 'Romania'),(select country_code_alpha3 from country where country_name = 'Romania')),
		('Moldavian Hills DOC',(select country_code_num from country where country_name = 'Romania'),(select country_code_alpha2 from country where country_name = 'Romania'),(select country_code_alpha3 from country where country_name = 'Romania')),
		('Muntenia Hills DOC',(select country_code_num from country where country_name = 'Romania'),(select country_code_alpha2 from country where country_name = 'Romania'),(select country_code_alpha3 from country where country_name = 'Romania')),
		('Oltenia Hills DOC',(select country_code_num from country where country_name = 'Romania'),(select country_code_alpha2 from country where country_name = 'Romania'),(select country_code_alpha3 from country where country_name = 'Romania')),
		('Banat Hills DOC',(select country_code_num from country where country_name = 'Romania'),(select country_code_alpha2 from country where country_name = 'Romania'),(select country_code_alpha3 from country where country_name = 'Romania')),
		('Dobrogea Hills DOC',(select country_code_num from country where country_name = 'Romania'),(select country_code_alpha2 from country where country_name = 'Romania'),(select country_code_alpha3 from country where country_name = 'Romania')),
		('Crișana Maramureș Hills DOC',(select country_code_num from country where country_name = 'Romania'),(select country_code_alpha2 from country where country_name = 'Romania'),(select country_code_alpha3 from country where country_name = 'Romania')),
		('The Danube Terraces DOC',(select country_code_num from country where country_name = 'Romania'),(select country_code_alpha2 from country where country_name = 'Romania'),(select country_code_alpha3 from country where country_name = 'Romania')),
		('Andalusia',(select country_code_num from country where country_name = 'Spain'),(select country_code_alpha2 from country where country_name = 'Spain'),(select country_code_alpha3 from country where country_name = 'Spain')),
		('Aragon',(select country_code_num from country where country_name = 'Spain'),(select country_code_alpha2 from country where country_name = 'Spain'),(select country_code_alpha3 from country where country_name = 'Spain')),
		('Asturias',(select country_code_num from country where country_name = 'Spain'),(select country_code_alpha2 from country where country_name = 'Spain'),(select country_code_alpha3 from country where country_name = 'Spain')),
		('Cantabria',(select country_code_num from country where country_name = 'Spain'),(select country_code_alpha2 from country where country_name = 'Spain'),(select country_code_alpha3 from country where country_name = 'Spain')),
		('Castile and Leon',(select country_code_num from country where country_name = 'Spain'),(select country_code_alpha2 from country where country_name = 'Spain'),(select country_code_alpha3 from country where country_name = 'Spain')),
		('Castile-La Mancha',(select country_code_num from country where country_name = 'Spain'),(select country_code_alpha2 from country where country_name = 'Spain'),(select country_code_alpha3 from country where country_name = 'Spain')),
		('Catalonia',(select country_code_num from country where country_name = 'Spain'),(select country_code_alpha2 from country where country_name = 'Spain'),(select country_code_alpha3 from country where country_name = 'Spain')),
		('Community of Madrid',(select country_code_num from country where country_name = 'Spain'),(select country_code_alpha2 from country where country_name = 'Spain'),(select country_code_alpha3 from country where country_name = 'Spain')),
		('Valencian Community',(select country_code_num from country where country_name = 'Spain'),(select country_code_alpha2 from country where country_name = 'Spain'),(select country_code_alpha3 from country where country_name = 'Spain')),
		('Extremadura',(select country_code_num from country where country_name = 'Spain'),(select country_code_alpha2 from country where country_name = 'Spain'),(select country_code_alpha3 from country where country_name = 'Spain')),
		('Galicia',(select country_code_num from country where country_name = 'Spain'),(select country_code_alpha2 from country where country_name = 'Spain'),(select country_code_alpha3 from country where country_name = 'Spain')),
		('Balearic Islands',(select country_code_num from country where country_name = 'Spain'),(select country_code_alpha2 from country where country_name = 'Spain'),(select country_code_alpha3 from country where country_name = 'Spain')),
		('Canary Islands',(select country_code_num from country where country_name = 'Spain'),(select country_code_alpha2 from country where country_name = 'Spain'),(select country_code_alpha3 from country where country_name = 'Spain')),
		('Navarre',(select country_code_num from country where country_name = 'Spain'),(select country_code_alpha2 from country where country_name = 'Spain'),(select country_code_alpha3 from country where country_name = 'Spain')),
		('Basque Country',(select country_code_num from country where country_name = 'Spain'),(select country_code_alpha2 from country where country_name = 'Spain'),(select country_code_alpha3 from country where country_name = 'Spain')),
		('Murcia',(select country_code_num from country where country_name = 'Spain'),(select country_code_alpha2 from country where country_name = 'Spain'),(select country_code_alpha3 from country where country_name = 'Spain')),
		('La Rioja',(select country_code_num from country where country_name = 'Spain'),(select country_code_alpha2 from country where country_name = 'Spain'),(select country_code_alpha3 from country where country_name = 'Spain')),
		('Koumandaria',(select country_code_num from country where country_name = 'Cyprus'),(select country_code_alpha2 from country where country_name = 'Cyprus'),(select country_code_alpha3 from country where country_name = 'Cyprus')),
		('Laona – Akamas',(select country_code_num from country where country_name = 'Cyprus'),(select country_code_alpha2 from country where country_name = 'Cyprus'),(select country_code_alpha3 from country where country_name = 'Cyprus')),
		('Vouni Panagias – Ambelitis',(select country_code_num from country where country_name = 'Cyprus'),(select country_code_alpha2 from country where country_name = 'Cyprus'),(select country_code_alpha3 from country where country_name = 'Cyprus')),
		('Krasochoria Lemesou',(select country_code_num from country where country_name = 'Cyprus'),(select country_code_alpha2 from country where country_name = 'Cyprus'),(select country_code_alpha3 from country where country_name = 'Cyprus')),
		('Pitsilia',(select country_code_num from country where country_name = 'Cyprus'),(select country_code_alpha2 from country where country_name = 'Cyprus'),(select country_code_alpha3 from country where country_name = 'Cyprus')),
		('Nicosia - Larnaka',(select country_code_num from country where country_name = 'Cyprus'),(select country_code_alpha2 from country where country_name = 'Cyprus'),(select country_code_alpha3 from country where country_name = 'Cyprus')),
		('Diarizos Valley',(select country_code_num from country where country_name = 'Cyprus'),(select country_code_alpha2 from country where country_name = 'Cyprus'),(select country_code_alpha3 from country where country_name = 'Cyprus')),
		('Lemnos DOC',(select country_code_num from country where country_name = 'Greece'),(select country_code_alpha2 from country where country_name = 'Greece'),(select country_code_alpha3 from country where country_name = 'Greece')),
		('Paros DOC',(select country_code_num from country where country_name = 'Greece'),(select country_code_alpha2 from country where country_name = 'Greece'),(select country_code_alpha3 from country where country_name = 'Greece')),
		('Rhodes DOC',(select country_code_num from country where country_name = 'Greece'),(select country_code_alpha2 from country where country_name = 'Greece'),(select country_code_alpha3 from country where country_name = 'Greece')),
		('Samos DOC',(select country_code_num from country where country_name = 'Greece'),(select country_code_alpha2 from country where country_name = 'Greece'),(select country_code_alpha3 from country where country_name = 'Greece')),
		('Santorini DOC',(select country_code_num from country where country_name = 'Greece'),(select country_code_alpha2 from country where country_name = 'Greece'),(select country_code_alpha3 from country where country_name = 'Greece')),
		('Archanes DOC',(select country_code_num from country where country_name = 'Greece'),(select country_code_alpha2 from country where country_name = 'Greece'),(select country_code_alpha3 from country where country_name = 'Greece')),
		('Dafnes DOC',(select country_code_num from country where country_name = 'Greece'),(select country_code_alpha2 from country where country_name = 'Greece'),(select country_code_alpha3 from country where country_name = 'Greece')),
		('Peza DOC',(select country_code_num from country where country_name = 'Greece'),(select country_code_alpha2 from country where country_name = 'Greece'),(select country_code_alpha3 from country where country_name = 'Greece')),
		('Sitia DOC',(select country_code_num from country where country_name = 'Greece'),(select country_code_alpha2 from country where country_name = 'Greece'),(select country_code_alpha3 from country where country_name = 'Greece')),
		('Zitsa DOC',(select country_code_num from country where country_name = 'Greece'),(select country_code_alpha2 from country where country_name = 'Greece'),(select country_code_alpha3 from country where country_name = 'Greece')),
		('Kefalonia DOC',(select country_code_num from country where country_name = 'Greece'),(select country_code_alpha2 from country where country_name = 'Greece'),(select country_code_alpha3 from country where country_name = 'Greece')),
		('Amyndeon DOC',(select country_code_num from country where country_name = 'Greece'),(select country_code_alpha2 from country where country_name = 'Greece'),(select country_code_alpha3 from country where country_name = 'Greece')),
		('Epanomi DOC',(select country_code_num from country where country_name = 'Greece'),(select country_code_alpha2 from country where country_name = 'Greece'),(select country_code_alpha3 from country where country_name = 'Greece')),
		('Goumenissa DOC',(select country_code_num from country where country_name = 'Greece'),(select country_code_alpha2 from country where country_name = 'Greece'),(select country_code_alpha3 from country where country_name = 'Greece')),
		('Naoussa DOC',(select country_code_num from country where country_name = 'Greece'),(select country_code_alpha2 from country where country_name = 'Greece'),(select country_code_alpha3 from country where country_name = 'Greece')),
		('Mantineia DOC',(select country_code_num from country where country_name = 'Greece'),(select country_code_alpha2 from country where country_name = 'Greece'),(select country_code_alpha3 from country where country_name = 'Greece')),
		('Nemea DOC',(select country_code_num from country where country_name = 'Greece'),(select country_code_alpha2 from country where country_name = 'Greece'),(select country_code_alpha3 from country where country_name = 'Greece')),
		('Monemvassia-Malvasia DOC',(select country_code_num from country where country_name = 'Greece'),(select country_code_alpha2 from country where country_name = 'Greece'),(select country_code_alpha3 from country where country_name = 'Greece')),
		('Patras DOC',(select country_code_num from country where country_name = 'Greece'),(select country_code_alpha2 from country where country_name = 'Greece'),(select country_code_alpha3 from country where country_name = 'Greece')),
		('Nea Anchialos DOC',(select country_code_num from country where country_name = 'Greece'),(select country_code_alpha2 from country where country_name = 'Greece'),(select country_code_alpha3 from country where country_name = 'Greece')),
		('Rapsani DOC',(select country_code_num from country where country_name = 'Greece'),(select country_code_alpha2 from country where country_name = 'Greece'),(select country_code_alpha3 from country where country_name = 'Greece')),
		('Messenikola DOC',(select country_code_num from country where country_name = 'Greece'),(select country_code_alpha2 from country where country_name = 'Greece'),(select country_code_alpha3 from country where country_name = 'Greece')),
		('Hampshire',(select country_code_num from country where country_name = 'United Kingdom'),(select country_code_alpha2 from country where country_name = 'United Kingdom'),(select country_code_alpha3 from country where country_name = 'United Kingdom')),
		('Kent',(select country_code_num from country where country_name = 'United Kingdom'),(select country_code_alpha2 from country where country_name = 'United Kingdom'),(select country_code_alpha3 from country where country_name = 'United Kingdom')),
		('Surrey',(select country_code_num from country where country_name = 'United Kingdom'),(select country_code_alpha2 from country where country_name = 'United Kingdom'),(select country_code_alpha3 from country where country_name = 'United Kingdom')),
		('Sussex',(select country_code_num from country where country_name = 'United Kingdom'),(select country_code_alpha2 from country where country_name = 'United Kingdom'),(select country_code_alpha3 from country where country_name = 'United Kingdom'));


-- --------------------------------------------------------------------------------------------------------
-- Create Winery table
-- --------------------------------------------------------------------------------------------------------

drop table if exists winery;

create table if not exists Winery (
	Winery_Code int not null auto_increment,
	Winery_Name varchar(50) not null,
	Winery_Street varchar(50) not null,
	Winery_City varchar(50) not null,
	Winery_State VARCHAR(50),
	Winery_Postal_Code VARCHAR(10) NOT NULL,
	Winery_Country_Name VARCHAR(50) NOT NULL,

	primary key (Winery_Code),
	index (Winery_Code),
	index (Winery_Country_Name),

	foreign key (Winery_Country_Name) references country(country_name) on delete cascade on update cascade
);

# DESCRIBE Winery;

-- --------------------------------------------------------------------------------------------------------
-- Insert data into Winery table
-- --------------------------------------------------------------------------------------------------------

insert into Winery (Winery_Name,Winery_Street,Winery_City,Winery_State,Winery_Postal_Code,Winery_Country_Name)
	values
		('Sterling Vineyards','1111 Dunaweal Lane','Calistoga','California','94515',(select country_name from country where country_code_num = 840))
		('Portola Vineyards','850 Los Trancos Road','Portola Valley','California','94028',(select country_name from country where country_code_num = 840))
		('Envy Wines','1170 Tubbs Ln','Calistoga','California','94515',(select country_name from country where country_code_num = 840)),
		('Madonna Estate','5400 Old Sonoma Road','Napa','California','94559',(select country_name from country where country_code_num = 840)),
		('Domaine Chandon','1 California Drive','Yountville','California','94599',(select country_name from country where country_code_num = 840)),
		('The Steven Kent Winery','5443 Tesla Rd','Livermore','California','94550',(select country_name from country where country_code_num = 840)),
		('Silverado Vineyards','6121 Silverado Trail','Napa','California','94558',(select country_name from country where country_code_num = 840)),
		('Nottingham Cellars','2245 S Vasco Rd','Livermore','California','94550',(select country_name from country where country_code_num = 840)),
		('Rosenblum Cellars','10 Clay St','Oakland','California','94607',(select country_name from country where country_code_num = 840)),
		('Occasio Winery','2245 S Vasco Rd','Livermore','California','94550',(select country_name from country where country_code_num = 840)),
		('Nakedwines.com','222 Gateway Rd E','Napa','California','94558',(select country_name from country where country_code_num = 840)),
		('Wild Eye','P.O. Box 190','San Juan Bautista','California','95045',(select country_name from country where country_code_num = 840)),
		('Sullivan Vineyards','1090 Galleron Rd','St. Helena','California','94574',(select country_name from country where country_code_num = 840)),
		('Noble Vines','214 St Helena Hwy','St. Helena','California','94574',(select country_name from country where country_code_num = 840)),
		('Beringer Vineyards','2000 Main St','St. Helena','California','94574',(select country_name from country where country_code_num = 840)),
		('Alexander Valley Vineyards','8644 CA-128','Healdsburg','California','95448',(select country_name from country where country_code_num = 840)),
		('Tasting Room','3681 N Laughlin Rd','Santa Rosa','California','95403',(select country_name from country where country_code_num = 840)),
		('Robert Mondavi','7801 St Helena Hwy','Oakville','California','94562',(select country_name from country where country_code_num = 840));

-- --------------------------------------------------------------------------------------------------------
-- Create Grape_Variety table
-- --------------------------------------------------------------------------------------------------------


DROP TABLE IF EXISTS Grape_Variety;

CREATE TABLE IF NOT EXISTS Grape_Variety (
	Grape_Variety_Code INT NOT NULL auto_increment,
	Grape_Variety_Name VARCHAR(50) NOT NULL,

	PRIMARY KEY (Grape_Variety_Code)
);

#DESCRIBE Grape_Variety;

-- --------------------------------------------------------------------------------------------------------
-- Insert data into the Grape_Variety table
-- --------------------------------------------------------------------------------------------------------

insert into grape_variety (grape_variety_name)
	values
		('Albariño'),
		('Aligoté'),
		('Amarone'),
		('Arneis'),
		('Asti Spumante'),
		('Auslese'),
		('Banylus'),
		('Barbaresco'),
		('Bardolino'),
		('Barolo'),
		('Beaujolais'),
		('Blanc de Blancs'),
		('Blanc de Noirs'),
		('Blush'),
		('Boal or Bual'),
		('Brunello'),
		('Cabernet Franc'),
		('Cabernet Sauvignon'),
		('Carignan'),
		('Carmenere'),
		('Cava'),
		('Charbono'),
		('Champagne'),
		('Chardonnay'),
		('Châteauneuf-du-Pape'),
		('Chenin Blanc'),
		('Chianti'),
		('Chianti Classico'),
		('Claret'),
		('Colombard'),
		('Constantia'),
		('Cortese'),
		('Dolcetto'),
		('Eiswein'),
		('Frascati'),
		('Fumé Blanc'),
		('Gamay'),
		('Gamay Beaujolais'),
		('Gattinara'),
		('Gewürztraminer'),
		('Grappa'),
		('Grenache'),
		('Johannisberg Riesling'),
		('Kir'),
		('Lambrusco'),
		('Liebfraumilch'),
		('Madeira'),
		('Malbec'),
		('Marc'),
		('Marsala'),
		('Marsanne'),
		('Mead'),
		('Meritage'),
		('Merlot'),
		('Montepulciano'),
		('Moscato'),
		('Mourvedre'),
		('Müller-Thurgau'),
		('Muscat'),
		('Nebbiolo'),
		('Petit Verdot'),
		('Petite Sirah'),
		('Pinot Blanc'),
		('Pinot Grigio/Pinot Gris'),
		('Pinot Meunier'),
		('Pinot Noir'),
		('Pinotage'),
		('Port'),
		('Retsina'),
		('Rosé'),
		('Roussanne'),
		('Sangiovese'),
		('Sauterns'),
		('Sauvignon Blanc'),
		('Sémillon'),
		('Sherry'),
		('Soave'),
		('Tokay'),
		('Traminer'),
		('Trebbiano'),
		('Ugni Blanc'),
		('Valpolicella'),
		('Verdicchio'),
		('Viognier'),
		('Zinfandel');

-- --------------------------------------------------------------------------------------------------------
-- Create Wine table
-- --------------------------------------------------------------------------------------------------------

DROP TABLE IF EXISTS Wine;

CREATE TABLE IF NOT EXISTS Wine (
	Wine_Code INT NOT NULL auto_increment,
	Wine_Color_Code INT NOT NULL,
	Wine_Country_Code_Num INT NOT NULL,
	Wine_Variety_Code INT NOT NULL,
	Wine_Appellation_Code INT,
	Wine_Vintage INT NOT NULL,
	Wine_Name VARCHAR(50),
	Wine_Price DECIMAL NOT NULL,
	Qty_On_Hand int not null,

	PRIMARY KEY (Wine_Code),
	UNIQUE INDEX (Wine_Code),

	FOREIGN KEY (Wine_Color_Code) REFERENCES Colors(Color_Code) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (Wine_Country_Code_Num) REFERENCES Country(Country_Code_Num) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (Wine_Variety_Code) REFERENCES Grape_Variety(Grape_Variety_Code) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (Wine_Appellation_Code) REFERENCES Appellation(Appellation_Code) ON DELETE CASCADE ON UPDATE CASCADE
);

# DESCRIBE Wine;

-- --------------------------------------------------------------------------------------------------------
-- Insert data into Wine table
-- --------------------------------------------------------------------------------------------------------

insert into wine (wine_color_code,wine_country_code_num,wine_variety_code,wine_appellation_code,wine_vintage,wine_name,wine_price,qty_on_hand)
	values
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Pinot Noir'),(select appellation_code from appellation where appellation_name = 'Los Carneros AVA'),2015,'Sterling Carneros Pinot Noir',32.99,1),
		((select color_code from colors where color_name = 'Rose'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Pinot Noir and Zinfandel'),(select appellation_code from appellation where appellation_name = 'Napa Valley AVA'),0,'Chandon Sparkling Red',30.00,1),
		((select color_code from colors where color_name = 'White'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Chardonnay'),(select appellation_code from appellation where appellation_name = 'Santa Cruz Mountains AVA'),0,'Almendral',18.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Pinot Noir'),(select appellation_code from appellation where appellation_name = 'Los Carneros AVA'),2015,'Kirkland Carneros Pinot Noir',10.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'South Africa'),(select grape_variety_code from grape_variety where grape_variety_name = 'Shiraz and Viognier'),(select appellation_code from appellation where appellation_name = 'Coastal Region'),2016,'Arabella Reserve Shiraz Viognier',11.99,1),
		((select color_code from colors where color_name = 'White'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Sauvignon Blanc and Semillon'),(select appellation_code from appellation where appellation_name = 'North Coast AVA'),2012,'Envy Wines Late Harvest 2012',11.99,1),
		((select color_code from colors where color_name = 'White'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Pinot Gris'),(select appellation_code from appellation where appellation_name = 'Oak Knoll District of Napa Valley AVA'),2014,'Sterling Oak Knoll Pinot Gris',26.00,1),
		((select color_code from colors where color_name = 'White'),(select country_code_num from country where country_name = 'South Africa'),(select grape_variety_code from grape_variety where grape_variety_name = 'Chenin Blanc'),(select appellation_code from appellation where appellation_name = 'Coastal Region'),2016,'Heuningby Wellington Chenin Blanc 2016',13.70,1),
		((select color_code from colors where color_name = 'Rose'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Sangiovese'),(select appellation_code from appellation where appellation_name = 'Napa Valley AVA'),2016,'Silverado Sangiovese Rosato',25.00,1);
		((select color_code from colors where color_name = 'White'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Semillon'),(select appellation_code from appellation where appellation_name = 'Livermore Valley AVA'),2016,'Steven Kent Semillon',24.00,1),
		((select color_code from colors where color_name = 'White'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Chardonnay'),(select appellation_code from appellation where appellation_name = 'Napa Valley AVA'),2014,'Sterling Vineyards Reserve Chardonnay',40.00,2),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Pinot Noir'),(select appellation_code from appellation where appellation_name = 'Los Carneros AVA'),2012,'Madonna Estate Pinot Noir',20.00,2),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Pinot Noir'),(select appellation_code from appellation where appellation_name = 'Los Carneros AVA'),2008,'Madonna Estate Pinot Noir',20.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Zinfandel'),(select appellation_code from appellation where appellation_name = 'Rockpile AVA'),2014,'Sterling Rockpile Zinfandel',60.00,2),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Zinfandel'),(select appellation_code from appellation where appellation_name = 'Livermore Valley AVA'),2014,'Occasio Zinfandel',39.00,2),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Merlot'),(select appellation_code from appellation where appellation_name = 'Livermore Valley AVA'),2014,'Steven Kent BDX Merlot',48.00,2),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Zinfandel'),(select appellation_code from appellation where appellation_name = 'St. Helena AVA'),2013,'Rosenblum RC 11 Zinfandel',41.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Zinfandel'),(select appellation_code from appellation where appellation_name = 'Rockpile AVA'),2013,'Rosenblum Rockpile Vineyard Zinfandel',41.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Zinfandel'),(select appellation_code from appellation where appellation_name = 'Napa Valley AVA'),2012,'Rosenblum RC 12 Zinfandel',41.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Zinfandel'),(select appellation_code from appellation where appellation_name = 'Sonoma Valley AVA'),2012,'Rosenblum Maggies Reserve Zinfandel',41.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Zinfandel'),(select appellation_code from appellation where appellation_name = 'Dry Creek Valley AVA'),2016,'crowdpleazin',15.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Zinfandel'),(select appellation_code from appellation where appellation_name = 'Rutherford AVA'),2012,'Rosenblum RC 10 Zinfandel',40.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Merlot'),(select appellation_code from appellation where appellation_name = 'Napa Valley AVA'),2013,'Envy Reserve Estate Merlot',38.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Merlot'),(select appellation_code from appellation where appellation_name = 'Livermore Valley AVA'),2014,'Nottingham Cellars Merlot',32.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Merlot'),(select appellation_code from appellation where appellation_name = 'Napa Valley AVA'),2014,'Sterling Platinum Merlot',55.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Petite Sirah'),(select appellation_code from appellation where appellation_name = 'Central Coast AVA'),2010,'Wild Eye Petite Sirah',12.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Malbec'),(select appellation_code from appellation where appellation_name = 'Lodi AVA'),2016,'Karen Birmingham Malbec',17.49,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Petite Sirah'),(select appellation_code from appellation where appellation_name = 'Calistoga AVA'),2012,'Sterling Petite Sirah',40.00,2),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Petite Sirah'),(select appellation_code from appellation where appellation_name = 'Calistoga AVA'),2013,'Sterling Petite Sirah',40.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Syrah'),(select appellation_code from appellation where appellation_name = 'Livermore Valley AVA'),2012,'Occasio Syrah',38.00,2),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Pinot Noir'),(select appellation_code from appellation where appellation_name = 'California'),2016,'Akiyoshi Pinot Noir',18.99,2),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Malbec'),(select appellation_code from appellation where appellation_name = 'Livermore Valley AVA'),2012,'Occasio Heritage Malbec',60.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Petite Sirah'),(select appellation_code from appellation where appellation_name = 'Napa Valley AVA'),2015,'Envy Fortuna Petite Sirah',49.00,3),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Petite Sirah'),(select appellation_code from appellation where appellation_name = 'Napa Valley AVA'),2015,'Envy Calistoga Estate Petite Sirah',49.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Petite Sirah'),(select appellation_code from appellation where appellation_name = 'Napa Valley AVA'),2014,'Envy Fortuna Petite Sirah',49.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Cabernet Sauvignon'),(select appellation_code from appellation where appellation_name = 'Livermore Valley AVA'),2014,'Occasio Cabernet Sauvignon',40.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Cabernet Sauvignon'),(select appellation_code from appellation where appellation_name = 'Napa Valley AVA'),2014,'Silverado Estate Cabernet Sauvignon',50.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Cabernet Sauvignon'),(select appellation_code from appellation where appellation_name = 'Calistoga AVA'),2014, 'Sterling Platinum Cab',75.00,2),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Cabernet Sauvignon'),(select appellation_code from appellation where appellation_name = 'Yountville AVA'),2014,'Sterling Sleeping Lady Cab',125.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Cabernet Sauvignon'),(select appellation_code from appellation where appellation_name = 'Napa Valley AVA'),2014,'Sterling Yates Family Vineyard Cab',85.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Cabernet Franc'),(select appellation_code from appellation where appellation_name = 'Calistoga AVA'),2014,'Sterling Cab Franc',40.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Cabernet Sauvignon'),(select appellation_code from appellation where appellation_name = 'Calistoga AVA'),2014,'Envy Reserve Cab',54.00,3),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Cabernet Sauvignon'),(select appellation_code from appellation where appellation_name = 'Diamond Mountain District AVA'),2012,'Sterling DM Cab',90.00,2),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Cabernet Sauvignon'),(select appellation_code from appellation where appellation_name = 'Napa Valley AVA'),2013,'Madonna Estate Reserve Cab',34.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Cabernet Sauvignon'),(select appellation_code from appellation where appellation_name = 'Napa Valley AVA'),2014,'Envy Estate Cab',45.00,2),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Cabernet Sauvignon'),(select appellation_code from appellation where appellation_name = 'Rutherford AVA'),2013,'Sullivan Rutherford Cabernet Sauvignon',85.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Cabernet Sauvignon'),(select appellation_code from appellation where appellation_name = 'Livermore Valley AVA'),2014,'Nottingham Cellars Cabernet Sauvignon',36.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Cabernet Sauvignon'),(select appellation_code from appellation where appellation_name = 'Napa Valley AVA'),2014,'Sterling Iridium',250.00,2),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Sangiovese'),(select appellation_code from appellation where appellation_name = 'Napa Valley AVA'),2014,'Silverado Sangiovese',30.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Cabernet Sauvignon and Sangiovese'),(select appellation_code from appellation where appellation_name = 'Napa Valley AVA'),2014,'Silverado Club Red',75.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'Australia'),(select grape_variety_code from grape_variety where grape_variety_name = 'Shiraz'),(select appellation_code from appellation where appellation_name = 'Australia'),2016,'The Hero Shiraz',21.99,2),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Cabernet Sauvignon'),(select appellation_code from appellation where appellation_name = 'Stags Leap District AVA'),2014,'Silverado Solo Cab',125.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'Portugal'),(select grape_variety_code from grape_variety where grape_variety_name = 'Red Blend'),(select appellation_code from appellation where appellation_name = 'Vinho Verde DOC'),2015,'Montaria Reserva Red Blend',21.99,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'France'),(select grape_variety_code from grape_variety where grape_variety_name = 'Red Blend'),(select appellation_code from appellation where appellation_name = 'Minervois AOC'),2015,'Benjamin Darnault Minervois',9.99,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Red Blend'),(select appellation_code from appellation where appellation_name = 'El Dorado AVA'),2016,'Coloma Red Wine Blend',14.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Red Blend'),(select appellation_code from appellation where appellation_name = 'Calistoga AVA'),2013,'Sterling Winemakers Select Red Blend',65.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Red Blend'),(select appellation_code from appellation where appellation_name = 'Calistoga AVA'),2012,'Sterling Winemakers Select Red Blend',65.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Cuvee'),(select appellation_code from appellation where appellation_name = 'Livermore Valley AVA'),2015,'Nottingham Cellars Cuvee',24.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Cabernet Sauvignon'),(select appellation_code from appellation where appellation_name = 'Diamond Mountain District AVA'),2014,'Sterling DM Cab',90.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Cabernet Sauvignon'),(select appellation_code from appellation where appellation_name = 'Alexander Valley AVA'),2014,'Kirkland 2014 Cab',12.99,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Cabernet Sauvignon'),(select appellation_code from appellation where appellation_name = 'Lodi AVA'),2014,'Noble Vines 337 Cab',15.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Cabernet Sauvignon'),(select appellation_code from appellation where appellation_name = 'Santa Cruze Mountains AVA'),2013,'PV Santa Cruz Mountains Cab',38.00,5),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Cabernet Sauvignon'),(select appellation_code from appellation where appellation_name = 'Oakville AVA'),2006,'Pavi Wines - Aetna Springs Cab',39.99,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Red Blend'),(select appellation_code from appellation where appellation_name = 'Calistoga AVA'),2015,'Envy Bee Bees Blend',45.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Cabernet Sauvignon'),(select appellation_code from appellation where appellation_name = 'Los Carneros AVA'),2006,'Madonna Estate NV Cab',50.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Cabernet Sauvignon'),(select appellation_code from appellation where appellation_name = 'California'),2014,'Beringer Founders Estate Cab',30.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Cabernet Sauvignon'),(select appellation_code from appellation where appellation_name = 'Napa Valley AVA'),2010,'Madonna Estate Reserve Cab',50.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Cabernet Sauvignon'),(select appellation_code from appellation where appellation_name = 'Coombsville AVA'),2013,'Silverado Geo Cab',75.00,2),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Cabernet Sauvignon'),(select appellation_code from appellation where appellation_name = 'California'),2015,'Kirkland California Cab',22.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'France'),(select grape_variety_code from grape_variety where grape_variety_name = 'Syrah'),(select appellation_code from appellation where appellation_name = 'Côte-Rôtie AOC'),2015,'Vin du Jour Syrah',60.00,2),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Merlot'),(select appellation_code from appellation where appellation_name = 'Napa Valley AVA'),2014,'Sterling Platinum Merlot',65.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Cabernet Sauvignon'),(select appellation_code from appellation where appellation_name = 'Oakville AVA'),2014,'Robert Mondavi 50th Anniversary Cab',30.00,1),
		((select color_code from colors where color_name = 'White'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Chardonnay'),(select appellation_code from appellation where appellation_name = 'Santa Cruz Mountains AVA'),2014,'Portola Valley 2014 Chardonnay',32.00,4),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Zinfandel'),(select appellation_code from appellation where appellation_name = 'Sonoma County AVA'),2014,'Kirkland Old Vine Zin',10.00,1),
		((select color_code from colors where color_name = 'Red'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Pinot Noir'),(select appellation_code from appellation where appellation_name = 'Santa Cruz Mountains AVA'),2012,'Portola Valley Santa Cruz Pinot',38.00,2),
		((select color_code from colors where color_name = 'White'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Malvasia Bianca'),(select appellation_code from appellation where appellation_name = 'California'),2015,'Sterling Malvasia Bianca',32.00,1),
		((select color_code from colors where color_name = 'White'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Gewurtztraminer'),(select appellation_code from appellation where appellation_name = 'Los Carneros AVA'),2015,'Madonna Estate Gewurtztraminer',28.00,1),
		((select color_code from colors where color_name = 'White'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Chardonnay'),(select appellation_code from appellation where appellation_name = 'Rutherford AVA'),2015,'Sullivan Chardonnay',49.00,1),
		((select color_code from colors where color_name = 'White'),(select country_code_num from country where country_name = 'United States of America'),(select grape_variety_code from grape_variety where grape_variety_name = 'Chardonnay'),(select appellation_code from appellation where appellation_name = 'Oak Knoll District of Napa Valley AVA'),2015,'Carmenet Chardonnay',8.00,1);

-- --------------------------------------------------------------------------------------------------------
-- update quantity on hand of a bottle once drank
-- --------------------------------------------------------------------------------------------------------

update wine set qty_on_hand = 0 where wine_code = 132;

-- --------------------------------------------------------------------------------------------------------
-- alter wine table to force wine_name for create procedure to add wine
-- --------------------------------------------------------------------------------------------------------

alter table wine modify wine_name varchar(50) not null;

-- --------------------------------------------------------------------------------------------------------
-- describe wine table after modifying wine_name column to force not null as a check if it worked
-- --------------------------------------------------------------------------------------------------------

describe wine;

-- --------------------------------------------------------------------------------------------------------
-- create a stored procedure to add to qty on hand of wine when new wine is purchased
-- --------------------------------------------------------------------------------------------------------

DROP PROCEDURE IF EXISTS AddWine; ### here is the code to also drop the procedure if needed.
DELIMITER $$
CREATE PROCEDURE AddWine(_wcolor varchar(10),_wcountry int,_wvariety int,_wappellation int,_wvintage int,_wname varchar(50),_wprice decimal,_wqty int)
BEGIN
	DECLARE wineCount INT;
	DECLARE resultId INT unsigned;
	DECLARE msg varchar(100);
	SET wineCount = (
		SELECT COUNT(wine_code)
		FROM Wine
		WHERE Wine_Name = _wname
		);
	IF wineCount = 0 THEN
		INSERT INTO Wine (Wine_Color_Code,Wine_Country_Code_Num,Wine_Variety_Code,Wine_Appellation_Code,Wine_Vintage,Wine_Name,Wine_Price,Qty_On_Hand)
		VALUES (_wcolor,_wcountry,_wvariety,_wappellation,_wvintage,_wname,_wprice,_wqty);
	SET resultId = last_insert_id();
	SET msg = 'Wine added.';
	ELSE
	SET resultId = 0;
	SET msg = 'Wine already exists.';
	END IF;

SELECT resultId, msg;
END$$
DELIMITER ;

-- --------------------------------------------------------------------------------------------------------
-- create a view to see what wines you have from 3 years ago
-- --------------------------------------------------------------------------------------------------------

CREATE VIEW ThreeYearWines AS
SELECT Wine_Code,Wine_Name,Wine_Vintage,Qty_On_Hand FROM wine
	WHERE Wine_Vintage = (SELECT YEAR(CURDATE()) - 3);

-- --------------------------------------------------------------------------------------------------------
-- create a view to see what wines you have from 2 years ago
-- --------------------------------------------------------------------------------------------------------

CREATE VIEW TwoYearWines AS
SELECT Wine_Code,Wine_Name,Wine_Vintage,Qty_On_Hand FROM wine
	WHERE Wine_Vintage = (SELECT YEAR(CURDATE()) - 2);

-- --------------------------------------------------------------------------------------------------------
-- create a view to see what wines you have from 1 years ago
-- --------------------------------------------------------------------------------------------------------

CREATE VIEW OneYearWines AS
SELECT Wine_Code,Wine_Name,Wine_Vintage,Qty_On_Hand FROM wine
	WHERE Wine_Vintage = (SELECT YEAR(CURDATE()) - 1);

-- --------------------------------------------------------------------------------------------------------
-- create a view to see what wines you have this year
-- --------------------------------------------------------------------------------------------------------

CREATE VIEW CurrentYearWines AS
SELECT Wine_Code,Wine_Name,Wine_Vintage,Qty_On_Hand FROM wine
	WHERE Wine_Vintage = (SELECT YEAR(CURDATE()));

-- --------------------------------------------------------------------------------------------------------
-- create a view to see what wines you have from 4 years ago
-- --------------------------------------------------------------------------------------------------------

CREATE VIEW FourYearWines AS
SELECT Wine_Code,Wine_Name,Wine_Vintage,Qty_On_Hand FROM wine
	WHERE Wine_Vintage = (SELECT YEAR(CURDATE()) - 4);

-- --------------------------------------------------------------------------------------------------------
-- create a view to see what wines you have from 5 years ago
-- --------------------------------------------------------------------------------------------------------

CREATE VIEW FiveYearWines AS
SELECT Wine_Code,Wine_Name,Wine_Vintage,Qty_On_Hand FROM wine
	WHERE Wine_Vintage = (SELECT YEAR(CURDATE()) < SELECT YEAR(CURDATE()) - 5);

-- --------------------------------------------------------------------------------------------------------
-- create a view to see what the oldest wines are
-- --------------------------------------------------------------------------------------------------------
drop view if exists oldestwines;
CREATE VIEW OldestWines AS
SELECT Wine_Code,Wine_Name,Wine_Vintage,Qty_On_Hand FROM wine
	WHERE Wine_Vintage < 2012;

-- --------------------------------------------------------------------------------------------------------
-- create a procedure to add a color to the colors table
-- --------------------------------------------------------------------------------------------------------

describe colors; ### describe the colors table so we can determine what we need to include in our add procedure

DROP PROCEDURE IF EXISTS AddColor;
DELIMITER $$
CREATE PROCEDURE AddColor(_cname varchar(10))
BEGIN
	DECLARE colorCount INT;
	DECLARE resultId INT unsigned;
	DECLARE msg varchar(100);
	SET colorCount = (
		SELECT COUNT(color_code)
		FROM Colors
		WHERE Color_Name = _cname
		);
	IF colorCount = 0 THEN
		INSERT INTO Colors (Color_Name)
		VALUES (_cname);
	SET resultId = last_insert_id();
	SET msg = 'Color inserted.';
	ELSE
	SET resultId = 0;
	SET msg = 'Color already exists.';
	END IF;

SELECT resultId, msg;
END$$
DELIMITER ;

### let's test out and see if our color works by checking on white, which we know is already in the table

call
	AddColor ('White'); ### it works!

-- --------------------------------------------------------------------------------------------------------
-- create a view to see wines in stock with a price less or equal to $30
-- --------------------------------------------------------------------------------------------------------

describe wine; ### describe wine table to ensure we don't miscode anything

drop view if exists wineslessthan30;
CREATE VIEW wineslessthan30 AS
SELECT Wine_Name,Wine_Vintage,Qty_On_Hand,Wine_Price FROM wine
	WHERE wine_price <= 30 and qty_on_hand > 0
	order by wine_price desc;

select * from wineslessthan30; ### call it and see what wines are less than 30!

-- --------------------------------------------------------------------------------------------------------
-- create a view to see wines in stock with a price more than $30 and less or equal to $50
-- --------------------------------------------------------------------------------------------------------

drop view if exists winesbetween30and50;
CREATE VIEW winesbetween30and50 AS
SELECT Wine_Name,Wine_Vintage,Qty_On_Hand,Wine_Price FROM wine
	WHERE wine_price > 30 and wine_price <= 50 and qty_on_hand > 0
	order by wine_price desc;

select * from winesbetween30and50; ### call it and see what wines you have between $30 and $50

-- --------------------------------------------------------------------------------------------------------
-- create a view to see wines in stock with a price more than $50
-- --------------------------------------------------------------------------------------------------------

drop view if exists winesmorethan50;
CREATE VIEW winesmorethan50 AS
SELECT Wine_Name,Wine_Vintage,Qty_On_Hand,Wine_Price FROM wine
	WHERE wine_price > 50 and qty_on_hand > 0
	order by wine_price desc;

select * from winesmorethan50; ### call it and see what wines you have w/ a price more than $50

select * from wine where wine_name = 'Sterling Iridium'; ### this gives us nonsensical codes so we don't know much about the wine

/* join information from country and appellation tables to wine table to get the names of countries and appellations the wine is from */

select wine.wine_name as 'Wine', country.country_name as 'Country', appellation.appellation_name as 'Appellation'
	from wine
	JOIN appellation ON appellation.appellation_code = wine.wine_appellation_code
	JOIN country ON country.country_code_num = appellation.appellation_country_code_num;

/* now let's see if we can view all wines NOT from the united states */

select wine.wine_name as 'Wine', country.country_name as 'Country', appellation.appellation_name as 'Appellation'
	from wine
	JOIN appellation ON appellation.appellation_code = wine.wine_appellation_code
	JOIN country ON country.country_code_num = appellation.appellation_country_code_num
	where country.country_name <> 'United States of America';

/* now let's see if we can view all wines FROM the United States */

select wine.wine_name as 'Wine', country.country_name as 'Country', appellation.appellation_name as 'Appellation'
	from wine
	JOIN appellation ON appellation.appellation_code = wine.wine_appellation_code
	JOIN country ON country.country_code_num = appellation.appellation_country_code_num
	where country.country_name = 'United States of America';

/* now let's make our view of wines from the US coded into a view, and make sure we have them in stock -- i.e. let's only see wines from the us we have on hand. let's also look at the grape variety */

drop view if exists uswinesonhand;
create view uswinesonhand as
select wine.wine_name as 'Wine', country.country_name as 'Country', appellation.appellation_name as 'Appellation', grape_variety.grape_variety_name as 'Varietal'
	from wine
	join grape_variety on grape_variety.grape_variety_code = wine.wine_variety_code
	JOIN appellation ON appellation.appellation_code = wine.wine_appellation_code
	JOIN country ON country.country_code_num = appellation.appellation_country_code_num
	where country.country_name = 'United States of America' and qty_on_hand > 0
	order by wine.wine_name;

select * from uswinesonhand;

/* now let's make our view of wines not from the US coded into a view, and make sure we have them in stock -- i.e. let's only see wines from the us we have on hand. let's also look at the grape variety */

drop view if exists intlwinesonhand;
create view intlwinesonhand as
select wine.wine_name as 'Wine', country.country_name as 'Country', appellation.appellation_name as 'Appellation', grape_variety.grape_variety_name as 'Varietal'
	from wine
	join grape_variety on grape_variety.grape_variety_code = wine.wine_variety_code
	JOIN appellation ON appellation.appellation_code = wine.wine_appellation_code
	JOIN country ON country.country_code_num = appellation.appellation_country_code_num
	where country.country_name <> 'United States of America' and qty_on_hand > 0
	order by wine.wine_name;

select * from intlwinesonhand;

/* now i want to see how many international wines I have with a price > $50 */

select wine.wine_name as 'Wine', country.country_name as 'Country', appellation.appellation_name as 'Appellation', grape_variety.grape_variety_name as 'Varietal'
	from wine
	join grape_variety on grape_variety.grape_variety_code = wine.wine_variety_code
	JOIN appellation ON appellation.appellation_code = wine.wine_appellation_code
	JOIN country ON country.country_code_num = appellation.appellation_country_code_num
	where country.country_name <> 'United States of America' and qty_on_hand > 0 and wine_price > 50
	order by wine.wine_name;

/* view for wines out of stock */

drop view if exists winesoutofstock;
CREATE VIEW winesoutofstock AS
SELECT Wine_Name,Wine_Vintage,Grape_Variety_Name,Qty_On_Hand,Wine_Price
	FROM wine
	join grape_variety on grape_variety.grape_variety_code = wine.wine_variety_code
	WHERE qty_on_hand = 0
	order by wine_name;

select * from winesoutofstock;

#select everything from wine table with a quantity
select * from wine where qty_on_hand>1 order by wine_name;

#delete an entry from the wine table & select for review
delete from wine where wine_code = 174;
select * from wine where qty_on_hand>0 order by wine_name;

#update quantity on hand in wine table & select for review
update wine set qty_on_hand=1 where wine_code=135;
select * from wine where qty_on_hand>0 order by wine_name;
