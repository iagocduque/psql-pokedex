-- ============
-- GENERATION I
-- ============

-- ↓ Creating the table Pokédex
Create table if not exists Pokedex
-- ↑ NOTE: the expression "if not exists" makes the table creation more flexible, because, if the programmer does not know if the table already exists, no exception will be thrown.
(Pkdx smallserial, -- ← Pokédex number
 Pkmn varchar(10) not null, -- ← Pokémon name, up to 10 characters only prior to Pokémon X and Y
 Type1 varchar(6) not null, -- ← Pokémon type, up to 6 characters only prior to Pokémon X and Y
 Type2 varchar(6), -- ← Pokémon second type if exists
 EvFrom varchar(10), -- ← Is the Pokémon an evolution from another one?
 EvTo varchar(10), -- ← Can the Pokémon evolve?
 Primary key (Pkdx)); -- ← The Pokédex number will be the primary key

-- ↓ Inserting the values in the Pokédex table
Insert into Pokedex (Pkmn,Type1,Type2,EvFrom,EvTo) values
('Bulbasaur','Grass','Poison',null,'Ivysaur'),
('Ivysaur','Grass','Poison','Bulbasaur','Venusaur'),
('Venusaur','Grass','Poison','Ivysaur',null),
('Charmander','Fire',null,null,'Charmeleon'),
('Charmeleon','Fire',null,'Charmander','Charizard'),
('Charizard','Fire','Flying','Charmeleon',null),
('Squirtle','Water',null,null,'Wartortle'),
('Wartortle','Water',null,'Squirtle','Blastoise'),
('Blastoise','Water',null,'Wartortle',null),
('Caterpie','Bug',null,null,'Metapod'),
('Metapod','Bug',null,'Caterpie','Butterfree'),
('Butterfree','Bug','Flying','Metapod',null),
('Weedle','Bug','Poison',null,'Kakuna'),
('Kakuna','Bug','Poison','Weedle','Beedrill'),
('Beedrill','Bug','Poison','Kakuna',null),
('Pidgey','Normal','Flying',null,'Pidgeotto'),
('Pidgeotto','Normal','Flying','Pidgey','Pidgeot'),
('Pidgeot','Normal','Flying','Pidgeotto',null),
('Rattata','Normal',null,null,'Raticate'),
('Raticate','Normal',null,'Rattata',null),
('Spearow','Normal','Flying',null,'Fearow'),
('Fearow','Normal','Flying','Spearow',null),
('Ekans','Poison',null,null,'Arbok'),
('Arbok','Poison',null,'Ekans',null),
('Pikachu','Electr',null,null,'Raichu'),
('Raichu','Electr',null,'Pikachu',null),
('Sandshrew','Ground',null,null,'Sandslash'),
('Sandslash','Ground',null,'Sandshrew',null),
('Nidoran♀','Poison',null,null,'Nidorina'),
('Nidorina','Poison',null,'Nidoran♀','Nidoqueen'),
('Nidoqueen','Poison','Ground','Nidorina',null),
('Nidoran♂','Poison',null,null,'Nidorino'),
('Nidorino','Poison',null,'Nidoran♂','Nidoking'),
('Nidoking','Poison','Ground','Nidorino',null),
('Clefairy','Fairy',null,null,'Clefable'),
('Clefable','Fairy',null,'Clefairy',null),
('Vulpix','Fire',null,null,'Ninetales'),
('Ninetales','Fire',null,'Vulpix',null),
('Jigglypuff','Normal',null,null,'Wigglytuff'),
('Wigglytuff','Normal',null,'Jigglypuff',null),
('Zubat','Poison','Flying',null,'Golbat'),
('Golbat','Poison','Flying','Zubat',null),
('Oddish','Grass','Poison',null,'Gloom'),
('Gloom','Grass','Poison','Oddish','Vileplume'),
('Vileplume','Grass','Poison','Gloom',null),
('Paras','Bug','Grass',null,'Parasect'),
('Parasect','Bug','Grass','Paras',null),
('Venonat','Bug','Poison',null,'Venomoth'),
('Venomoth','Bug','Poison','Venonat',null),
('Diglett','Ground',null,null,'Dugtrio'),
('Dugtrio','Ground',null,'Diglett',null),
('Meowth','Normal',null,null,'Persian'),
('Persian','Normal',null,'Meowth',null),
('Psyduck','Water',null,null,'Golduck'),
('Golduck','Water',null,'Psyduck',null),
('Mankey','Fight',null,null,'Primeape'),
('Primeape','Fight',null,'Mankey',null),
('Growlithe','Fire',null,null,'Arcanine'),
('Arcanine','Fire',null,'Growlithe',null),
('Poliwag','Water',null,null,'Poliwhirl'),
('Poliwhirl','Water',null,'Poliwag','Poliwrath'),
('Poliwrath','Water','Fight','Poliwhirl',null),
('Abra','Psychc',null,null,'Kadabra'),
('Kadabra','Psychc',null,'Abra','Alakazam'),
('Alakazam','Psychc',null,'Kadabra',null),
('Machop','Fight',null,null,'Machoke'),
('Machoke','Fight',null,'Machop','Machamp'),
('Machamp','Fight',null,'Machoke',null),
('Bellsprout','Grass','Poison',null,'Weepinbell'),
('Weepinbell','Grass','Poison','Bellsprout','Victreebel'),
('Victreebel','Grass','Poison','Weepinbell',null),
('Tentacool','Water','Poison',null,'Tentacruel'),
('Tentacruel','Water','Poison','Tentacool',null),
('Geodude','Rock','Ground',null,'Graveler'),
('Graveler','Rock','Ground','Geodude','Golem'),
('Golem','Rock','Ground','Graveler',null),
('Ponyta','Fire',null,null,'Rapidash'),
('Rapidash','Fire',null,'Ponyta',null),
('Slowpoke','Water','Psychc',null,'Slowbro'),
('Slowbro','Water','Psychc','Slowpoke',null),
('Magnemite','Electr',null,null,'Magneton'),
('Magneton','Electr',null,'Magnemite',null),
('Farfetchd','Normal','Flying',null,null),
('Doduo','Normal','Flying',null,'Dodrio'),
('Dodrio','Normal','Flying','Doduo',null),
('Seel','Water',null,null,'Dewgong'),
('Dewgong','Water','Ice','Seel',null),
('Grimer','Poison',null,null,'Muk'),
('Muk','Poison',null,'Grimer',null),
('Shellder','Water',null,null,'Cloyster'),
('Cloyster','Water','Ice','Shellder',null),
('Gastly','Ghost','Poison',null,'Haunter'),
('Haunter','Ghost','Poison','Gastly','Gengar'),
('Gengar','Ghost','Poison','Haunter',null),
('Onix','Rock','Ground',null,null),
('Drowzee','Psychc',null,null,'Hypno'),
('Hypno','Psychc',null,'Drowzee',null),
('Krabby','Water',null,null,'Kingler'),
('Kingler','Water',null,'Krabby',null),
('Voltorb','Electr',null,null,'Electrode'),
('Electrode','Electr',null,'Voltorb',null),
('Exeggcute','Grass','Psychc',null,'Exeggutor'),
('Exeggutor','Grass','Psychc','Exeggcute',null),
('Cubone','Ground',null,null,'Marowak'),
('Marowak','Ground',null,'Cubone',null),
('Hitmonlee','Fight',null,null,null),
('Hitmonchan','Fight',null,null,null),
('Lickitung','Normal',null,null,null),
('Koffing','Poison',null,null,'Weezing'),
('Weezing','Poison',null,'Koffing',null),
('Rhyhorn','Ground','Rock',null,'Rhydon'),
('Rhydon','Ground','Rock','Rhyhorn',null),
('Chansey','Normal',null,null,null),
('Tangela','Grass',null,null,null),
('Kangaskhan','Normal',null,null,null),
('Horsea','Water',null,null,'Seadra'),
('Seadra','Water',null,'Horsea',null),
('Goldeen','Water',null,null,'Seaking'),
('Seaking','Water',null,'Goldeen',null),
('Staryu','Water',null,null,'Starmie'),
('Starmie','Water','Psychc','Staryu',null),
('Mr. Mime','Psychc','Fairy',null,null),
('Scyther','Bug','Flying',null,null),
('Jynx','Ice','Psychc',null,null),
('Electabuzz','Electr',null,null,null),
('Magmar','Fire',null,null,null),
('Pinsir','Bug',null,null,null),
('Tauros','Normal',null,null,null),
('Magikarp','Water',null,null,'Gyarados'),
('Gyarados','Water','Flying','Magikarp',null),
('Lapras','Water','Ice',null,null),
('Ditto','Normal',null,null,null),
('Eevee','Normal',null,null,'(multi)'),
('Vaporeon','Water',null,'Eevee',null),
('Jolteon','Electr',null,'Eevee',null),
('Flareon','Fire',null,'Eevee',null),
('Porygon','Normal',null,null,null),
('Omanyte','Rock','Water',null,'Omastar'),
('Omastar','Rock','Water','Omanyte',null),
('Kabuto','Rock','Water',null,'Kabutops'),
('Kabutops','Rock','Water','Kabuto',null),
('Aerodactyl','Rock','Flying',null,null),
('Snorlax','Normal',null,null,null),
('Articuno','Ice','Flying',null,null),
('Zapdos','Electr','Flying',null,null),
('Moltres','Fire','Flying',null,null),
('Dratini','Dragon',null,null,'Dragonair'),
('Dragonair','Dragon',null,'Dratini','Dragonite'),
('Dragonite','Dragon','Flying','Dragonair',null),
('Mewtwo','Psychc',null,null,null),
('Mew','Psychc',null,null,null);

-- ↓ Creating the table Multievolutions (based on the "(multi)" value for the EvTo column from the table Pokédex)
Create table if not exists Multievolutions
(N smallserial, -- ← Generic number, for mandatory pk
 Pkmn varchar(10) not null, -- ← Evolved Pokémon name
 Dex smallint not null, -- ← Number in the Pokédex
 EvFrom varchar(10) not null, Method text not null, -- ← How to evolve it
 -- ↑ Which Pokémon was evolved?
 Primary key (N), -- ← For the generic number
 Constraint fk_dex -- ↓ Defining the Dex value as the foreign key
  foreign key (Dex) references Pokedex (Pkdx)
  On delete cascade);
    
-- ↓ Inserting the values in the Multievolutions table
Insert into Multievolutions (Pkmn,Dex,EvFrom,Method) values
('Vaporeon',134,'Eevee','Water Stone'),
('Jolteon',135,'Eevee','Thunderstone'),
('Flareon',136,'Eevee','Fire Stone');


-- =============
-- GENERATION II
-- =============

-- ↓ Updating the values of the Pokémon for Gen II
Update Pokedex set EvFrom='Pichu' where Pkdx=25; -- ← New pre-evolution for Pikachu
Update Pokedex set EvFrom='Cleffa' where Pkdx=35; -- ← New pre-evolution for Clefairy
Update Pokedex set EvFrom='Igglybuff' where Pkdx=39; -- ← New pre-evolution for Jigglypuff
Update Pokedex set EvTo='(multi)' where Pkdx in (44,61,79); -- ← New evolutions for Gloom, Poliwhirl and Slowpoke
Update Pokedex set Type2='Steel' where Pkdx in (81,82); -- ← New Steel type for Magnemite and Magneton
Update Pokedex set EvTo='Steelix' where Pkdx=95; -- ← New evolution for Onix
Update Pokedex set EvFrom='Tyrogue' where Pkdx in (106,107); -- ← New pre-evolution for Hitmonlee and Hitmonchan
Update Pokedex set EvTo='Blissey' where Pkdx=113; -- ← New evolution for Chansey
Update Pokedex set EvTo='Kingdra' where Pkdx=117; -- ← New evolution for Seadra
Update Pokedex set EvTo='Scizor' where Pkdx=123; -- ← New evolution for Scyther
Update Pokedex set EvFrom='Smoochum' where Pkdx=124; -- ← New pre-evolution for Jynx
Update Pokedex set EvFrom='Elekid' where Pkdx=125; -- ← New pre-evolution for Electabuzz
Update Pokedex set EvFrom='Magby' where Pkdx=126; -- ← New pre-evolution for Magmar
Update Pokedex set EvTo='Porygon2' where Pkdx=137; -- ← New evolution for Porygon

-- ↓ NOTE: The inserts below exist to avoid violating the foreign key constraint from the Multievolutions table.
-- ↓ Inserting evolutions new to Gen II
Insert into Pokedex (Pkdx,Pkmn,Type1,Type2,EvFrom,EvTo) values
(182,'Bellossom','Grass',null,'Gloom',null),
(186,'Politoed','Water',null,'Poliwhirl',null),
(199,'Slowking','Water','Psychc','Slowpoke',null),
(196,'Espeon','Psychc',null,'Eevee',null),
(197,'Umbreon','Dark',null,'Eevee',null);

-- ↓ Adding a new value in the Pokédex table for the generation the Pokémon was introduced
Alter table Pokedex add column Gen int; -- ← New column added
Update Pokedex set Gen=1; -- ← For all Pokémon (incorrect value for every Pokémon after Mew)
Update Pokedex set Gen=2 where Pkdx>151; -- ← Corrected value for every Pokémon after Mew
Alter table Pokedex alter column Gen set not null; -- ← Setting the value as not null


-- ==============
-- GENERATION III
-- ==============

-- ↓ Adding a new value in the Pokédex table for abilities, introduced in Gen III
Alter table Pokedex add column Abil varchar(12); -- ← New column added
-- ↓ Updating the abilities of the Pokémon
Update Pokedex set Abil='Chlorophyll' where -- ← Chlorophyll for 10 Pokémon
Pkdx in (43,44,45,69,70,71,102,103,114,182);
Update Pokedex set Abil='Swift Swim' where -- ← Swift Swim for 8 Pokémon
Pkdx in (116,118,119,129,138,139,140,141);
Update Pokedex set Abil='Run Away' where -- ← Run Away for 7 Pokémon
Pkdx in (19,20,77,78,84,85,133);
Update Pokedex set Abil='Rock Head' where -- ← Rock Head for 7 Pokémon
Pkdx in (74,75,76,95,104,105,142);
Update Pokedex set Abil='Keen Eye' where -- ← Keen Eye for 7 Pokémon
Pkdx in (16,17,18,21,22,83,107);
Update Pokedex set Abil='Poison Point' where -- ← Poison Point for 7 Pokémon
Pkmn like 'Nido%' or Pkdx=117;
Update Pokedex set Abil='Intimidate' where -- ← Intimidate for 6 Pokémon
Pkdx in (23,24,128,58,59,130);
Update Pokedex set Abil='Water Absorb' where -- ← Water Absorb for 6 Pokémon
Pkmn like 'Poliw%' or Pkdx in (131,134,186);
Update Pokedex set Abil='Synchronize' where -- ← Synchronize for 6 Pokémon
Pkmn like '%bra' or Pkdx in (65,151,196,197);
Update Pokedex set Abil='Cute Charm' where -- ← Cute Charm for 4 Pokémon
Pkmn like 'Clef%' or Pkmn like '%uff';
Update Pokedex set Abil='Oblivious' where -- ← Oblivious for 4 Pokémon
Pkmn like 'Slow%' or Pkdx=124;
Update Pokedex set Abil='Levitate' where -- ← Levitate for 4 Pokémon
Pkdx in (92,93,109,110);
Update Pokedex set Abil='Shield Dust' where -- ← Shield Dust for 4 Pokémon
Pkdx in (10,11,13,49);
Update Pokedex set Abil='Pressure' where -- ← Pressure for 4 Pokémon
Pkdx in (144,145,146,150);
Update Pokedex set Abil='Sand Veil' where -- ← Sand Veil for 4 Pokémon
Pkmn like 'Sands%' or Pkdx in (50,51);
Update Pokedex set Abil='Overgrow' where -- ← Overgrow for the Grass starter
Pkmn like '%saur';
Update Pokedex set Abil='Blaze' where -- ← Blaze for the Fire starter
Pkmn like 'Char%';
Update Pokedex set Abil='Torrent' where -- ← Torrent for the Water starter
Pkmn like '%rtle' or Pkdx=9;
Update Pokedex set Abil='Soundproof' where -- ← Soundproof for 3 Pokémon
Pkdx in (100,101,122);
Update Pokedex set Abil='Inner Focus' where -- ← Inner Focus for 3 Pokémon
Pkmn like '%bat' or Pkdx=149;
Update Pokedex set Abil='Limber' where -- ← Limber for 3 Pokémon
Pkdx in (53,106,132);
Update Pokedex set Abil='Shed Skin' where -- ← Shed Skin for 3 Pokémon
Pkdx in (14,147,148);
Update Pokedex set Abil='Guts' -- ← Guts for Machop and its evolutions
where Pkmn like 'Mach%';
Update Pokedex set Abil='Hyper Cutter' -- ← Hyper Cutter for 3 Pokémon
where Pkdx in (98,99,127);
Update Pokedex set Abil='Flash Fire' -- ← Flash Fire for Vulpix, Ninetales and Flareon
where Pkdx in (37,38,136);
Update Pokedex set Abil='Static' where -- ← Static for Pikachu, Raichu and Electabuzz
Pkmn like '%chu' or Pkdx=125;
Update Pokedex set Abil='Damp' -- ← Damp for Psyduck and Golduck
where Pkmn like '%duck';
Update Pokedex set Abil='Insomnia' -- ← Insomnia for Drowzee and Hypno
where Pkdx in (96,97);
Update Pokedex set Abil='Vital Spirit' -- ← Vital Spirit for Mankey and Primeape
where Pkdx in (56,57);
Update Pokedex set Abil='Clear Body' -- ← Clear Body for Tentacool and Tentacruel
where Pkmn like 'Tentac%';
Update Pokedex set Abil='Lightningrod' -- ← Lightning Rod for Rhyhorn and Rhydon
where Pkmn like 'Rhy%';
Update Pokedex set Abil='Illuminate' -- ← Illuminate for Staryu and Starmie
where Pkmn like 'Star%';
Update Pokedex set Abil='Stench' -- ← Stench for Grimer and Muk
where Pkdx in (88,89);
Update Pokedex set Abil='Effect Spore' -- ← Effect Spore for Paras and Parasect
where Pkmn like 'Paras%';
Update Pokedex set Abil='Shell Armor' -- ← Shell Armor for Shellder and Cloyster
where Pkdx in (90,91);
Update Pokedex set Abil='Magnet Pull' -- ← Magnet Pull for Magnemite and Magneton
where Pkmn like 'Magne%';
Update Pokedex set Abil='Swarm' -- ← Swarm for Beedrill and Scyther
where Pkdx in (15,123);
Update Pokedex set Abil='Compoundeyes' -- ← Compoundeyes for Butterfree and Venonat
where Pkdx in (12,48);
Update Pokedex set Abil='Thick Fat' -- ← Thick Fat for Seel and Dewgong
where Pkdx in (86,87);
Update Pokedex set Abil='Immunity' where Pkdx=143;-- ← Immunity for Snorlax
Update Pokedex set Abil='Natural Cure' where Pkdx=113;-- ← Natural Cure for Chansey
Update Pokedex set Abil='Cursed Body' where Pkdx=94;-- ← Cursed Body for Gengar
Update Pokedex set Abil='Pickup' where Pkdx=52;-- ← Pickup for Meowth
Update Pokedex set Abil='Flame Body' where Pkdx=126;-- ← Flame Body for Magmar
Update Pokedex set Abil='Own Tempo' where Pkdx=108;-- ← Own Tempo for Lickitung
Update Pokedex set Abil='Volt Absorb' where Pkdx=135;-- ← Volt Absorb for Jolteon
Update Pokedex set Abil='Trace' where Pkdx=137;-- ← Trace for Porygon
Update Pokedex set Abil='Early Bird' where Pkdx=115;-- ← Early Bird for Kangaskhan
Alter table Pokedex alter column Abil set not null; -- ← Setting the value as not null


-- =============
-- GENERATION IV
-- =============

-- ↓ Updating the values of the Pokémon for Gen IV
Update Pokedex set EvTo='Magnezone' where Pkdx=82; -- ← New evolution for Magneton
Update Pokedex set EvTo='Lickilicky' where Pkdx=108; -- ← New evolution for Lickitung
Update Pokedex set EvTo='Rhyperior' where Pkdx=112; -- ← New evolution for Rhyhorn
Update Pokedex set EvFrom='Happiny' where Pkdx=113; -- ← New pre-evolution for Chansey
Update Pokedex set EvTo='Tangrowth' where Pkdx=114; -- ← New evolution for Tangela
Update Pokedex set EvFrom='Mime Jr.' where Pkdx=122; -- ← New pre-evolution for Mr. Mime
Update Pokedex set EvTo='Electivire' where Pkdx=125; -- ← New evolution for Electabuzz
Update Pokedex set EvTo='Magmortar' where Pkdx=126; -- ← New evolution for Magmar

-- ↓ Inserting evolutions new to Gen IV
Insert into Pokedex (Pkdx,Pkmn,Type1,Type2,EvFrom,EvTo,Gen,Abil) values
(470,'Leafeon','Grass',null,'Eevee',null,4,'Leaf Guard'),
(471,'Glaceon','Ice',null,'Eevee',null,4,'Snow Cloak');
Insert into Multievolutions (Pkmn,Dex,EvFrom,Method) values
('Leafeon',470,'Eevee','Leaf Stone'),
('Glaceon',471,'Eevee','Ice Stone');


-- =============
-- GENERATION VI
-- =============

-- ↓ Changing the character limit of the values
Alter table Pokedex alter column Type1 type text; -- ← No more character limit
Alter table Pokedex alter column Type2 type text; -- ← No more character limit
Alter table Pokedex alter column Abil type text; -- ← No more character limit
Update Pokedex set Type1='Electric' where Type1='Electr'; -- ← Renaming Electr to Electric
Update Pokedex set Type2='Electric' where Type2='Electr';
Update Pokedex set Type1='Psychic' where Type1='Psychc'; -- ← Renaming Psychc to Psychic
Update Pokedex set Type2='Psychic' where Type2='Psychc';
Update Pokedex set Type1='Fighting' where Type1='Fight'; -- ← Renaming Fight to Fighting
Update Pokedex set Type2='Fighting' where Type2='Fight';
Update Pokedex set Abil='Compound Eyes' where Abil='Compoundeyes'; -- ← Renaming Compoundeyes to Compound Eyes
Update Pokedex set Abil='Lighting Rod' where Abil='Lightingrod'; -- ← Renaming Lightingrod to Lighting Rod

-- ↓ Adding a new value in the Pokédex table for megaevolutions
Alter table Pokedex add column Mega int; -- ← New column added
Update Pokedex set Mega=0; -- ← For all Pokémon (incorrect value for several Pokémon)
Update Pokedex set Mega=2 where
Pkdx=6 or Pkdx=150;-- ← Corrected values for Charizard and Mewtwo
Update Pokedex set Mega=1 where
Pkdx in (3,9,65,94,115,127,130,142);-- ← Corrected values for certain Pokémon (XY)
Update Pokedex set Mega=1 where
Pkdx=15 or Pkdx=18 or Pkdx=80;-- ← Corrected values for certain Pokémon (Ωrαs)
Alter table Pokedex alter column Mega set not null; -- ← Setting the value as not null

-- ↓ Creating the table Megaevolutions
Create table if not exists Megaevolutions
(N smallserial, -- ← Generic number, for mandatory pk
 Pkmn text not null, -- ← New name when Megaevolved
 Dex smallint not null, -- ← Pokédex number from the Pokedex table's "Pkdx" value
 Item text not null, Game text not null, -- ← Game that introduced the Mega
 -- ↑ Mega crystal
 Primary key (N), -- ← For the generic number
 Constraint fk_dex -- ↓ Defining the Dex value as the foreign key
  foreign key (Dex) references Pokedex (Pkdx)
  On delete cascade);
  
-- ↓ Inserting the values in the Megaevolutions table
Insert into Megaevolutions (Pkmn,Dex,Item,Game) values
('Mega Venusaur',3,'Venusaurite','Pokémon X and Y'),
('Mega Charizard X',6,'Charizardite X','Pokémon X'),
('Mega Charizard Y',6,'Charizardite Y','Pokémon Y'),
('Mega Blastoise',9,'Blastoisite','Pokémon X and Y'),
('Mega Alakazam',65,'Alakazite','Pokémon X and Y'),
('Mega Gengar',94,'Gengarite','Pokémon X and Y'),
('Mega Kangaskhan',115,'Kangaskhanite','Pokémon X and Y'),
('Mega Pinsir',127,'Pinsirite','Pokémon X and Y'),
('Mega Gyarados',130,'Gyaradosite','Pokémon X and Y'),
('Mega Aerodactyl',142,'Aerodactylite','Pokémon X and Y'),
('Mega Mewtwo X',150,'Mewtwonite X','Pokémon X'),
('Mega Mewtwo Y',150,'Mewtwonite Y','Pokémon Y'),
('Mega Beedrill',15,'Beedrillite','Pokémon Ωmega Ruby and αlpha Sapphire'),
('Mega Pidgeot',18,'Pidgeotite','Pokémon Ωmega Ruby and αlpha Sapphire'),
('Mega Slowbro',80,'Slowbronite','Pokémon Ωmega Ruby and αlpha Sapphire');

-- ↓ Inserting evolutions new to Gen VI
Insert into Pokedex (Pkdx,Pkmn,Type1,Type2,EvFrom,EvTo,Gen,Abil,Mega) values
(700,'Sylveon','Fairy',null,'Eevee',null,6,'Cute Charm',0);
Insert into Multievolutions (Pkmn,Dex,EvFrom,Method) values
('Sylveon',700,'Eevee','High Friendship with Fairy-type move');


-- ==============
-- GENERATION VII
-- ==============

-- ↓ Creating the table AlolanFormes
Create table if not exists AlolanFormes
(N smallserial, -- ← Generic number, for mandatory pk
 Pkmn varchar(10) not null, -- ← Evolved Pokémon name
 Dex smallint not null, -- ← Number in the Pokédex              
 Type1 text not null, Type2 text, Abil varchar(12) not null,
 -- ↑ New type _ New 2nd type ↑ _ New ↑ ability
 Primary key (N), -- ← For the generic number
 Constraint fk_dex -- ↓ Defining the Dex value as the foreign key
  foreign key (Dex) references Pokedex (Pkdx)
  On delete cascade);
  
-- ↓ Inserting the values in the AlolanFormes table
Insert into AlolanFormes (Pkmn,Dex,Type1,Type2,Abil) values
('Rattata',19,'Dark','Normal','Gluttony'),
('Raticate',20,'Dark','Normal','Gluttony'),
('Raichu',26,'Electr','Psychc','Surge Surfer'),
('Sandshrew',27,'Ice','Steel','Snow Cloak'),
('Sandslash',28,'Ice','Steel','Snow Cloak'),
('Vulpix',37,'Ice',null,'Snow Cloak'),
('Ninetales',38,'Ice',null,'Snow Cloak'),
('Diglett',50,'Ground','Steel','Sand Veil'),
('Dugtrio',51,'Ground','Steel','Sand Veil'),
('Meowth',52,'Dark',null,'Pickup'),
('Persian',53,'Dark',null,'Pickup'),
('Geodude',74,'Rock','Electr','Magnet Pull'),
('Graveler',75,'Rock','Electr','Magnet Pull'),
('Golem',76,'Rock','Electr','Magnet Pull'),
('Grimer',88,'Poison','Dark','Poison Touch'),
('Muk',89,'Poison','Dark','Poison Touch'),
('Exeggutor',103,'Grass','Dragon','Frisk'),
('Marowak',105,'Fire','Ghost','Cursed Body');


-- ===============
-- GENERATION VIII
-- ===============

-- ↓ Adding a new value in the Pokédex table for gigantamaxes
Alter table Pokedex add column Gmax bool; -- ← New column added, boolean type
Update Pokedex set Gmax=false; -- ← For all Pokémon (incorrect value for certain ones)
Update Pokedex set Gmax=true where Pkdx in
(3,6,9,12,25,52,68,94,99,131,133,143);
-- ↑ Fully evolved starters, Butterfree, Pikachu, Meowth, Machamp, Gengar, Kingler, Lapras, Eevee and Snorlax
Alter table Pokedex alter column Gmax set not null; -- ← Setting the value as not null

-- ↓ Updating the AlolanFormes to RegionalFormes
Alter table AlolanFormes rename to RegionalFormes; -- ← New name
Alter table RegionalFormes add column Region text; -- ← New column added
Update RegionalFormes set Region='Alola'; -- ← Setting all existing formes to Alola

-- ↓ Inserting regionals new to Gen VIII
Insert into RegionalFormes (Pkmn,Dex,Type1,Type2,Abil,Region) values
('Meowth',52,'Steel',null,'Pickup','Galar'),
('Ponyta',77,'Psychc',null,'Run Away','Galar'),
('Rapidash',78,'Psychc',null,'Run Away','Galar'),
('Slowpoke',79,'Psychc',null,'Gluttony','Galar'),
('Slowbro',80,'Poison','Psychc','Gluttony','Galar'),
('Farfetchd',83,'Fight',null,'Steadfast','Galar'),
('Weezing',110,'Poison','Fairy','Levitate','Galar'),
('Mr. Mime',122,'Ice','Psychc','Vital Spirit','Galar'),
('Articuno',144,'Psychc','Flying','Competitive','Galar'),
('Zapdos',145,'Fight','Flying','Defiant','Galar'),
('Moltres',146,'Dark','Flying','Berserk','Galar'),
('Growlithe',58,'Fire','Rock','Intimidate','Hisui'),
('Arcanine',59,'Fire','Rock','Intimidate','Hisui'),
('Voltorb',100,'Electr','Grass','Soundproof','Hisui'),
('Electrode',101,'Electr','Grass','Soundproof','Hisui');

-- ↓ Inserting an evolution new to Gen VIII
Update Pokedex set EvTo='(multi)' where Pkdx=123;
Insert into Pokedex (Pkdx,Pkmn,Type1,Type2,EvFrom,EvTo,Gen,Abil,Mega,Gmax) values
(901,'Kleavor','Bug','Rock','Scyther',null,8,'Cute Charm',0,false);
Insert into Multievolutions (Pkmn,Dex,EvFrom,Method) values
('Kleavor',901,'Scyther','Black Augurite');


-- =============
-- GENERATION IX
-- =============

-- ↓ Inserting an evolution new to Gen IX
Update Pokedex set EvTo='Annihilape' where Pkdx=57; -- ← New evolution for Primeape

-- ↓ Inserting regionals new to Gen IX
Insert into RegionalFormes (Pkmn,Dex,Type1,Type2,Abil,Region) values
('Tauros',128,'Fight',null,'Intimidate','Paldea'),
('Tauros',128,'Fight','Fire','Intimidate','Paldea'),
('Tauros',128,'Fight','Water','Intimidate','Paldea');
-- ↑ NOTE: The Pokémon Wiglett, Wugtrio, Toedscool and Toedscruel ARE NOT regional formes. According to Scarlet and Violet's lore, they are different species.

-- ↓ Inserting megas new to Gen IX
Update Pokedex set Mega=1 where
Pkdx in (36,71,121,149);-- ← New mega for Clefable, Victreebel, Starmie and Dragonite
Update Pokedex set Mega=2 where Pkdx=26;-- ← Two megas for Raichu
Insert into Megaevolutions (Pkmn,Dex,Item,Game) values
('Mega Clefable',36,'Clefablite','Pokémon Legends Z-A'),
('Mega Victreebel',71,'Victreebelite','Pokémon Legends Z-A'),
('Mega Starmie',121,'Starminite','Pokémon Legends Z-A'),
('Mega Dragonite',149,'Dragoninite','Pokémon Legends Z-A'),
('Mega Raichu X',26,'Raichunite X','Pokémon Legends Z-A: Mega Dimension'),
('Mega Raichu Y',26,'Raichunite Y','Pokémon Legends Z-A: Mega Dimension');
