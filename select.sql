-- ↓ Fetching all Pokémon
Select * from Pokedex order by pkdx;

-- ↓ NOTE: The selects below are filtered.
Select Pkmn from Pokedex where
EvTo is null and EvFrom is null order by pkmn; -- ← Will fetch which Pokémon have no evolution chains

Select Pkmn,EvFrom,EvTo from Pokedex where
EvTo is not null and EvFrom is not null order by pkdx; -- ← Will fetch which Pokémon are in the middle of an evolution chain

Select Pkmn from Pokedex where EvTo like '%multi%' order by pkmn; -- ← Will fetch which Pokémon have multiple evolutions
Select Pkmn from Pokedex where Gen != 1 order by pkmn; -- ← Will fetch which Pokémon were introduced only later generations
-- ↑ NOTE: Because the Pokédex focuses on Pokémon from Generation 1, they are all evolutions. 

Select Pkmn,Type1,Type2 from Pokedex where Type2 is not null order by pkdx; -- ← Will fetch which Pokémon are dual type
Select Abil, Count(*) as n from Pokedex group by Abil order by n desc; -- ← Will return which abilities are the most common
-- ↑ NOTE: The select above returned 50 abilities and, with 10 Pokémon having it, Chlorophyll is the most common.

Select Pkmn,Abil from Pokedex where Abil = 'Chlorophyll' order by pkmn;
-- ↑ Will return which Pokémon have the Chlorophyll ability
Select Pkmn,Mega from Pokedex where Mega>0 order by pkdx; -- ← Will return which Pokémon can Megaevolve
Select p.Pkmn,Mega from Pokedex p inner join Megaevolutions m on m.dex=p.pkdx; -- ← Will also return which can Megaevolve
-- ↑ NOTE: Because Charizard, Raichu and Mewtwo have two Megas, they are shown duplicated.
Select p.Pkmn,r.Region from Pokedex p
 inner join RegionalFormes r on r.dex=p.pkdx; -- ← Will return which Pokémon have regional formes

-- ↓ This will return which types are the most common
Select Type, Count(*) as n from (
 Select Type1 as Type from Pokedex
 Union all
 Select Type2 from Pokedex where Type2 is not null
) group by Type order by n desc;
-- ↑ NOTE: The select above returned 18 types and, with 34 Pokémon being it, Water is the most common.

Select Pkmn,Type1,Type2 from Pokedex where
 Type1='Water' or Type2='Water' order by pkdx; -- ← Will return which Pokémon are Water-type
 
Select Pkmn from Pokedex where Gmax is true order by pkdx; -- ← Will fetch which Pokémon have Gigantamax formes
