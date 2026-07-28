-- ↓ Creating the table Pokédex
Create table if not exists Pokedex
-- ↑ NOTE: the expression "if not exists" makes the table creation more flexible, because, if the programmer does not know if the table already exists, no exception will be thrown.
(Pkdx smallserial, -- ← Pokédex number
 Pkmn varchar(10) not null, -- ← Pokémon name, up to 10 characters only prior to Pokémon X and Y
 Gen int not null, -- ← Generation's number
 EvFrom varchar(10), -- ← Is the Pokémon an evolution from another one?
 EvTo varchar(10), -- ← Can the Pokémon evolve?
 Type1 varchar(6) not null, -- ← Pokémon type, up to 6 characters only prior to Pokémon X and Y
 Type2 varchar(6), -- ← Pokémon second type if exists
 Abil varchar(12) not null, -- ← Ability, up to 12 characters only prior to Pokémon X and Y
 Mega int not null, -- ← How many Megaevolutions?
 Gmax bool not null, -- ← Can the Pokémon Gigantamax?
 Primary key (Pkdx)); -- ← The Pokédex number will be the primary key

-- ↓ Inserting the values in the Pokédex table
Insert into Pokedex (Pkmn,Gen,EvFrom,EvTo,Type1,Type2,Abil,Mega,Gmax) values
('Bulbasaur',1,null,'Ivysaur','Grass','Poison','Overgrow',0,false),
('Ivysaur',1,'Bulbasaur','Venusaur','Grass','Poison','Overgrow',0,false),
('Venusaur',1,'Ivysaur',null,'Grass','Poison','Overgrow',1,true),
('Charmander',1,null,'Charmeleon','Fire',null,'Blaze',0,false),
('Charmeleon',1,'Charmander','Charizard','Fire',null,'Blaze',0,false),
('Charizard',1,'Charmeleon',null,'Fire','Flying','Blaze',2,true),
('Squirtle',1,null,'Wartortle','Water',null,'Torrent',0,false),
('Wartortle',1,'Squirtle','Blastoise','Water',null,'Torrent',0,false),
('Blastoise',1,'Wartortle',null,'Water',null,'Torrent',1,true),
('Caterpie',1,null,'Metapod','Bug',null,'Shield Dust',0,false),
('Metapod',1,'Caterpie','Butterfree','Bug',null,'Shield Dust',0,false),
('Butterfree',1,'Metapod',null,'Bug','Flying','Compoundeyes',0,true),
('Weedle',1,null,'Kakuna','Bug','Poison','Shield Dust',0,false),
('Kakuna',1,'Weedle','Beedrill','Bug','Poison','Shed Skin',0,false),
('Beedrill',1,'Kakuna',null,'Bug','Poison','Swarm',1,false),
('Pidgey',1,null,'Pidgeotto','Normal','Flying','Keen Eye',0,false),
('Pidgeotto',1,'Pidgey','Pidgeot','Normal','Flying','Keen Eye',0,false),
('Pidgeot',1,'Pidgeotto',null,'Normal','Flying','Keen Eye',1,false),
('Rattata',1,null,'Raticate','Normal',null,'Run Away',0,false),
('Raticate',1,'Rattata',null,'Normal',null,'Run Away',0,false),
('Spearow',1,null,'Fearow','Normal','Flying','Keen Eye',0,false),
('Fearow',1,'Spearow',null,'Normal','Flying','Keen Eye',0,false),
('Ekans',1,null,'Arbok','Poison',null,'Intimidate',0,false),
('Arbok',1,'Ekans',null,'Poison',null,'Intimidate',0,false),
('Pikachu',1,'Pichu','Raichu','Electr',null,'Static',0,true),
('Raichu',1,'Pikachu',null,'Electr',null,'Static',2,false),
('Sandshrew',1,null,'Sandslash','Ground',null,'Sand Veil',0,false),
('Sandslash',1,'Sandshrew',null,'Ground',null,'Sand Veil',0,false),
('Nidoran♀',1,null,'Nidorina','Poison',null,'Poison Point',0,false),
('Nidorina',1,'Nidoran♀','Nidoqueen','Poison',null,'Poison Point',0,false),
('Nidoqueen',1,'Nidorina',null,'Poison','Ground','Poison Point',0,false),
('Nidoran♂',1,null,'Nidorino','Poison',null,'Poison Point',0,false),
('Nidorino',1,'Nidoran♂','Nidoking','Poison',null,'Poison Point',0,false),
('Nidoking',1,'Nidorino',null,'Poison','Ground','Poison Point',0,false),
('Clefairy',1,'Cleffa','Clefable','Fairy',null,'Cute Charm',0,false),
('Clefable',1,'Clefairy',null,'Fairy',null,'Cute Charm',1,false),
('Vulpix',1,null,'Ninetales','Fire',null,'Flash Fire',0,false),
('Ninetales',1,'Vulpix',null,'Fire',null,'Flash Fire',0,false),
('Jigglypuff',1,'Igglybuff','Wigglytuff','Normal','Fairy','Cute Charm',0,false),
('Wigglytuff',1,'Jigglypuff',null,'Normal','Fairy','Cute Charm',0,false),
('Zubat',1,null,'Golbat','Poison','Flying','Inner Focus',0,false),
('Golbat',1,'Zubat','Crobat','Poison','Flying','Inner Focus',0,false),
('Oddish',1,null,'Gloom','Grass','Poison','Chlorophyll',0,false),
('Gloom',1,'Oddish','(multi)','Grass','Poison','Chlorophyll',0,false),
('Vileplume',1,'Gloom',null,'Grass','Poison','Chlorophyll',0,false),
('Paras',1,null,'Parasect','Bug','Grass','Effect Spore',0,false),
('Parasect',1,'Paras',null,'Bug','Grass','Effect Spore',0,false),
('Venonat',1,null,'Venomoth','Bug','Poison','Compoundeyes',0,false),
('Venomoth',1,'Venonat',null,'Bug','Poison','Shield Dust',0,false),
('Diglett',1,null,'Dugtrio','Ground',null,'Sand Veil',0,false),
('Dugtrio',1,'Diglett',null,'Ground',null,'Sand Veil',0,false),
('Meowth',1,null,'Persian','Normal',null,'Pickup',0,true),
('Persian',1,'Meowth',null,'Normal',null,'Limber',0,false),
('Psyduck',1,null,'Golduck','Water',null,'Damp',0,false),
('Golduck',1,'Psyduck',null,'Water',null,'Damp',0,false),
('Mankey',1,null,'Primeape','Fight',null,'Vital Spirit',0,false),
('Primeape',1,'Mankey','Annihilape','Fight',null,'Vital Spirit',0,false),
('Growlithe',1,null,'Arcanine','Fire',null,'Intimidate',0,false),
('Arcanine',1,'Growlithe',null,'Fire',null,'Intimidate',0,false),
('Poliwag',1,null,'Poliwhirl','Water',null,'Water Absorb',0,false),
('Poliwhirl',1,'Poliwag','(multi)','Water',null,'Water Absorb',0,false),
('Poliwrath',1,'Poliwhirl',null,'Water','Fight','Water Absorb',0,false),
('Abra',1,null,'Kadabra','Psychc',null,'Synchronize',0,false),
('Kadabra',1,'Abra','Alakazam','Psychc',null,'Synchronize',0,false),
('Alakazam',1,'Kadabra',null,'Psychc',null,'Synchronize',1,false),
('Machop',1,null,'Machoke','Fight',null,'Guts',0,false),
('Machoke',1,'Machop','Machamp','Fight',null,'Guts',0,false),
('Machamp',1,'Machoke',null,'Fight',null,'Guts',0,true),
('Bellsprout',1,null,'Weepinbell','Grass','Poison','Chlorophyll',0,false),
('Weepinbell',1,'Bellsprout','Victreebel','Grass','Poison','Chlorophyll',0,false),
('Victreebel',1,'Weepinbell',null,'Grass','Poison','Chlorophyll',1,false),
('Tentacool',1,null,'Tentacruel','Water','Poison','Clear Body',0,false),
('Tentacruel',1,'Tentacool',null,'Water','Poison','Clear Body',0,false),
('Geodude',1,null,'Graveler','Rock','Ground','Rock Head',0,false),
('Graveler',1,'Geodude','Golem','Rock','Ground','Rock Head',0,false),
('Golem',1,'Graveler',null,'Rock','Ground','Rock Head',0,false),
('Ponyta',1,null,'Rapidash','Fire',null,'Run Away',0,false),
('Rapidash',1,'Ponyta',null,'Fire',null,'Run Away',0,false),
('Slowpoke',1,null,'(multi)','Water','Psychc','Oblivious',0,false),
('Slowbro',1,'Slowpoke',null,'Water','Psychc','Oblivious',1,false),
('Magnemite',1,null,'Magneton','Electr','Steel','Magnet Pull',0,false),
('Magneton',1,'Magnemite','Magnezone','Electr','Steel','Magnet Pull',0,false),
('Farfetchd',1,null,null,'Normal','Flying','Keen Eye',0,false),
('Doduo',1,null,'Dodrio','Normal','Flying','Run Away',0,false),
('Dodrio',1,'Doduo',null,'Normal','Flying','Run Away',0,false),
('Seel',1,null,'Dewgong','Water',null,'Thick Fat',0,false),
('Dewgong',1,'Seel',null,'Water','Ice','Thick Fat',0,false),
('Grimer',1,null,'Muk','Poison',null,'Stench',0,false),
('Muk',1,'Grimer',null,'Poison',null,'Stench',0,false),
('Shellder',1,null,'Cloyster','Water',null,'Shell Armor',0,false),
('Cloyster',1,'Shellder',null,'Water','Ice','Shell Armor',0,false),
('Gastly',1,null,'Haunter','Ghost','Poison','Levitate',0,false),
('Haunter',1,'Gastly','Gengar','Ghost','Poison','Levitate',0,false),
('Gengar',1,'Haunter',null,'Ghost','Poison','Cursed Body',1,true),
('Onix',1,null,'Steelix','Rock','Ground','Rock Head',0,false),
('Drowzee',1,null,'Hypno','Psychc',null,'Insomnia',0,false),
('Hypno',1,'Drowzee',null,'Psychc',null,'Insomnia',0,false),
('Krabby',1,null,'Kingler','Water',null,'Hyper Cutter',0,false),
('Kingler',1,'Krabby',null,'Water',null,'Hyper Cutter',0,true),
('Voltorb',1,null,'Electrode','Electr',null,'Soundproof',0,false),
('Electrode',1,'Voltorb',null,'Electr',null,'Soundproof',0,false),
('Exeggcute',1,null,'Exeggutor','Grass','Psychc','Chlorophyll',0,false),
('Exeggutor',1,'Exeggcute',null,'Grass','Psychc','Chlorophyll',0,false),
('Cubone',1,null,'Marowak','Ground',null,'Rock Head',0,false),
('Marowak',1,'Cubone',null,'Ground',null,'Rock Head',0,false),
('Hitmonlee',1,'Tyrogue',null,'Fight',null,'Limber',0,false),
('Hitmonchan',1,'Tyrogue',null,'Fight',null,'Keen Eye',0,false),
('Lickitung',1,null,'Lickilicky','Normal',null,'Own Tempo',0,false),
('Koffing',1,null,'Weezing','Poison',null,'Levitate',0,false),
('Weezing',1,'Koffing',null,'Poison',null,'Levitate',0,false),
('Rhyhorn',1,null,'Rhydon','Ground','Rock','Lightningrod',0,false),
('Rhydon',1,'Rhyhorn','Rhyperior','Ground','Rock','Lightningrod',0,false),
('Chansey',1,'Happiny','Blissey','Normal',null,'Natural Cure',0,false),
('Tangela',1,null,'Tangrowth','Grass',null,'Chlorophyll',0,false),
('Kangaskhan',1,null,null,'Normal',null,'Early Bird',1,false),
('Horsea',1,null,'Seadra','Water',null,'Swift Swim',0,false),
('Seadra',1,'Horsea','Kingdra','Water',null,'Poison Point',0,false),
('Goldeen',1,null,'Seaking','Water',null,'Swift Swim',0,false),
('Seaking',1,'Goldeen',null,'Water',null,'Swift Swim',0,false),
('Staryu',1,null,'Starmie','Water',null,'Illuminate',0,false),
('Starmie',1,'Staryu',null,'Water','Psychc','Illuminate',1,false),
('Mr. Mime',1,'Mime Jr.',null,'Psychc','Fairy','Soundproof',0,false),
('Scyther',1,null,'Scizor','Bug','Flying','Swarm',0,false),
('Jynx',1,'Smoochum',null,'Ice','Psychc','Oblivious',0,false),
('Electabuzz',1,'Elekid','Electivire','Electr',null,'Static',0,false),
('Magmar',1,'Magby','Magmortar','Fire',null,'Flame Body',0,false),
('Pinsir',1,null,null,'Bug',null,'Hyper Cutter',1,false),
('Tauros',1,null,null,'Normal',null,'Intimidate',0,false),
('Magikarp',1,null,'Gyarados','Water',null,'Swift Swim',0,false),
('Gyarados',1,'Magikarp',null,'Water','Flying','Intimidate',1,false),
('Lapras',1,null,null,'Water','Ice','Water Absorb',0,true),
('Ditto',1,null,null,'Normal',null,'Limber',0,false),
('Eevee',1,null,'(multi)','Normal',null,'Run Away',0,true),
('Vaporeon',1,'Eevee',null,'Water',null,'Water Absorb',0,false),
('Jolteon',1,'Eevee',null,'Electr',null,'Volt Absorb',0,false),
('Flareon',1,'Eevee',null,'Fire',null,'Flash Fire',0,false),
('Porygon',1,null,'Porygon2','Normal',null,'Trace',0,false),
('Omanyte',1,null,'Omastar','Rock','Water','Swift Swim',0,false),
('Omastar',1,'Omanyte',null,'Rock','Water','Swift Swim',0,false),
('Kabuto',1,null,'Kabutops','Rock','Water','Swift Swim',0,false),
('Kabutops',1,'Kabuto',null,'Rock','Water','Swift Swim',0,false),
('Aerodactyl',1,null,null,'Rock','Flying','Rock Head',1,false),
('Snorlax',1,null,null,'Normal',null,'Immunity',0,true),
('Articuno',1,null,null,'Ice','Flying','Pressure',0,false),
('Zapdos',1,null,null,'Electr','Flying','Pressure',0,false),
('Moltres',1,null,null,'Fire','Flying','Pressure',0,false),
('Dratini',1,null,'Dragonair','Dragon',null,'Shed Skin',0,false),
('Dragonair',1,'Dratini','Dragonite','Dragon',null,'Shed Skin',0,false),
('Dragonite',1,'Dragonair',null,'Dragon','Flying','Inner Focus',1,false),
('Mewtwo',1,null,null,'Psychc',null,'Pressure',2,false),
('Mew',1,null,null,'Psychc',null,'Synchronize',0,false);

-- ↓ NOTE: The inserts below are a spoiler for the next table to be created, because they exist to avoid violating the foreign key constraint.
Insert into Pokedex values
(182,'Bellossom',2,'Gloom',null,'Grass',null,'Chlorophyll',0,false),
(186,'Politoed',2,'Poliwhirl',null,'Water',null,'Water Absorb',0,false),
(199,'Slowking',2,'Slowpoke',null,'Water','Psychc','Oblivious',0,false),
(196,'Espeon',2,'Eevee',null,'Psychc',null,'Synchronize',0,false),
(197,'Umbreon',2,'Eevee',null,'Dark',null,'Synchronize',0,false),
(470,'Leafeon',4,'Eevee',null,'Grass',null,'Leaf Guard',0,false),
(471,'Glaceon',4,'Eevee',null,'Ice',null,'Snow Cloak',0,false),
(700,'Sylveon',6,'Eevee',null,'Fairy',null,'Cute Charm',0,false);


-- ↓ Creating the table Megaevolutions (based on the "Mega" values 1 and 2 from the table Pokédex)
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
('Mega Beedrill',15,'Beedrillite','Pokémon Ωmega Ruby and αlpha Sapphire'),
('Mega Pidgeot',18,'Pidgeotite','Pokémon Ωmega Ruby and αlpha Sapphire'),
('Mega Raichu X',26,'Raichunite X','Pokémon Legends Z-A: Mega Dimension'),
('Mega Raichu Y',26,'Raichunite Y','Pokémon Legends Z-A: Mega Dimension'),
('Mega Clefable',36,'Clefablite','Pokémon Legends Z-A'),
('Mega Alakazam',65,'Alakazite','Pokémon X and Y'),
('Mega Victreebel',71,'Victreebelite','Pokémon Legends Z-A'),
('Mega Slowbro',80,'Slowbronite','Pokémon Ωmega Ruby and αlpha Sapphire'),
('Mega Gengar',94,'Gengarite','Pokémon X and Y'),
('Mega Kangaskhan',115,'Kangaskhanite','Pokémon X and Y'),
('Mega Starmie',121,'Starminite','Pokémon Legends Z-A'),
('Mega Pinsir',127,'Pinsirite','Pokémon X and Y'),
('Mega Gyarados',130,'Gyaradosite','Pokémon X and Y'),
('Mega Aerodactyl',142,'Aerodactylite','Pokémon X and Y'),
('Mega Dragonite',149,'Dragoninite','Pokémon Legends Z-A'),
('Mega Mewtwo X',150,'Mewtwonite X','Pokémon X'),
('Mega Mewtwo Y',150,'Mewtwonite Y','Pokémon Y');


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
('Vileplume',45,'Gloom','Leaf Stone'),
('Bellossom',182,'Gloom','Sun Stone'),
('Poliwrath',62,'Poliwhirl','Water Stone'),
('Politoed',186,'Poliwhirl','Trade using Kings Rock'),
('Slowbro',80,'Slowpoke','Level 37'),
('Slowking',199,'Slowpoke','Trade using Kings Rock'),
('Vaporeon',134,'Eevee','Water Stone'),
('Jolteon',135,'Eevee','Thunderstone'),
('Flareon',136,'Eevee','Fire Stone'),
('Espeon',196,'Eevee','High Friendship Daytime'),
('Umbreon',197,'Eevee','High Friendship Nighttime'),
('Leafeon',470,'Eevee','Leaf Stone'),
('Glaceon',471,'Eevee','Ice Stone'),
('Sylveon',700,'Eevee','High Friendship with Fairy-type move learned');


-- ↓ Creating the table RegionalFormes (for Pokémon with regional formes)
Create table if not exists RegionalFormes
(N smallserial, -- ← Generic number, for mandatory pk
 Pkmn varchar(10) not null, -- ← Evolved Pokémon name
 Dex smallint not null, -- ← Number in the Pokédex                                    ↓ New ability
 Region text not null, Type1 varchar(6) not null, Type2 varchar(6), Abil varchar(12) not null,
 -- ↑ Which region?     ↑ New type                 ↑ New second type if exists
 Primary key (N), -- ← For the generic number
 Constraint fk_dex -- ↓ Defining the Dex value as the foreign key
  foreign key (Dex) references Pokedex (Pkdx)
  On delete cascade);

Insert into RegionalFormes (Pkmn,Dex,Region,Type1,Type2,Abil) values
('Rattata',19,'Alola','Dark','Normal','Gluttony'),
('Raticate',20,'Alola','Dark','Normal','Gluttony'),
('Raichu',26,'Alola','Electr','Psychc','Surge Surfer'),
('Sandshrew',27,'Alola','Ice','Steel','Snow Cloak'),
('Sandslash',28,'Alola','Ice','Steel','Snow Cloak'),
('Vulpix',37,'Alola','Ice',null,'Snow Cloak'),
('Ninetales',38,'Alola','Ice',null,'Snow Cloak'),
('Diglett',50,'Alola','Ground','Steel','Sand Veil'),
('Dugtrio',51,'Alola','Ground','Steel','Sand Veil'),
('Meowth',52,'Alola','Dark',null,'Pickup'),
('Meowth',52,'Galar','Steel',null,'Pickup'),
('Persian',53,'Alola','Dark',null,'Pickup'),
('Growlithe',58,'Hisui','Fire','Rock','Intimidate'),
('Arcanine',59,'Hisui','Fire','Rock','Intimidate'),
('Geodude',74,'Alola','Rock','Electr','Magnet Pull'),
('Graveler',75,'Alola','Rock','Electr','Magnet Pull'),
('Golem',76,'Alola','Rock','Electr','Magnet Pull'),
('Ponyta',77,'Galar','Psychc',null,'Run Away'),
('Rapidash',78,'Galar','Psychc',null,'Run Away'),
('Slowpoke',79,'Galar','Psychc',null,'Gluttony'),
('Slowbro',80,'Galar','Poison','Psychc','Gluttony'),
('Farfetchd',83,'Galar','Fight',null,'Steadfast'),
('Grimer',88,'Alola','Poison','Dark','Poison Touch'),
('Muk',89,'Alola','Poison','Dark','Poison Touch'),
('Voltorb',100,'Hisui','Electr','Grass','Soundproof'),
('Electrode',101,'Hisui','Electr','Grass','Soundproof'),
('Exeggutor',103,'Alola','Grass','Dragon','Frisk'),
('Marowak',105,'Alola','Fire','Ghost','Cursed Body'),
('Weezing',110,'Galar','Poison','Fairy','Levitate'),
('Mr. Mime',122,'Galar','Ice','Psychc','Vital Spirit'),
('Tauros',128,'Paldea','Fight',null,'Intimidate'),
('Tauros',128,'Paldea','Fight','Fire','Intimidate'),
('Tauros',128,'Paldea','Fight','Water','Intimidate'),
('Articuno',144,'Galar','Psychc','Flying','Competitive'),
('Zapdos',145,'Galar','Fight','Flying','Defiant'),
('Moltres',146,'Galar','Dark','Flying','Berserk');
-- ↑ NOTE: The Pokémon Wiglett, Wugtrio, Toedscool and Toedscruel ARE NOT regional formes. According to Scarlet and Violet's lore, they are different species.
