
--Bebidas predominantes top 3 					
select drink.drink, hi.Drinkcount					
from (select drinkid, count(drinkid) Drinkcount					
	from consultantdrink		
	group by drinkid			
		order by count(drinkid) desc) as hi
		
	join drink on hi.drinkid = drink.drinkid 
		order by Drinkcount 
		desc limit 3;					
	
	
--Bebidas Alcoholicas top 3					
select drink.drink,drink.drinktypeid, hi.Drinkcount					
	from (select drinkid, count(drinkid) Drinkcount					
	from consultantdrink			
	group by drinkid			
		order by count(drinkid) desc) as hi					
	join drink on hi.drinkid = drink.drinkid 
		where drink.drinktypeid='1' 
		order by Drinkcount 
		desc limit 3;					


--Bebidas no alcoholicas top 3					
select drink.drink,drink.drinktypeid, hi.Drinkcount					
	from (select drinkid, count(drinkid) Drinkcount					
	from consultantdrink			
	group by drinkid			
		order by count(drinkid) desc) as hi					
	join drink on hi.drinkid = drink.drinkid 
		where drink.drinktypeid='2' 
		order by Drinkcount 
		desc limit 3;		

			
--Top 3 path					
select path.path, hi.Pathcount					
	from (select pathid, count(pathid) Pathcount					
	from consultant			
	group by pathid			
		order by count(pathid) desc) as hi					
	join path on hi.pathid = path.pathid 
	order by Pathcount 
	desc limit 3;	


--Top 3 Snacks					
select snack.snack, hi.Snackcount					
	from (select snackid, count(snackid) Snackcount					
	from consultant			
	group by snackid			
		order by count(snackid) desc) as hi					
	join snack on hi.snackid = snack.snackid 
		order by Snackcount 
		desc limit 3;					


--Top 3 snack salty					
select snack.snack, hi.Snackcount					
	from (select snackid, count(snackid) Snackcount					
	from consultant			
	group by snackid			
		order by count(snackid) desc) as hi					
	join snack on hi.snackid = snack.snackid 
		where snack.snacktypeid='1' 
		order by Snackcount 
		desc limit 3;					


--top 3 snack general 					
select snack.snack, hi.Snackcount					
	from (select snackid, count(snackid) Snackcount					
	from consultant			
	group by snackid			
		order by count(snackid) desc) as hi					
	join snack on hi.snackid = snack.snackid 
		order by Snackcount 
		desc limit 3;					


--top 3 sweet snack					
select snack.snack, hi.Snackcount					
	from (select snackid, count(snackid) Snackcount					
	from consultant			
	group by snackid			
		order by count(snackid) desc) as hi					
	join snack on hi.snackid = snack.snackid 
		where snack.snacktypeid='2' 
		order by Snackcount 
		desc limit 3;					


--top 3 healthy snack					
select snack.snack, hi.Snackcount					
	from (select snackid, count(snackid) Snackcount					
	from consultant			
	group by snackid			
		order by count(snackid) desc) as hi					
	join snack on hi.snackid = snack.snackid 
		where snack.snacktypeid='3' 
		order by Snackcount 
		desc limit 3;					


--Top 5 boardgames					
select boardgame.boardgame, hi.Boardcount					
	from (select boardgameid, count(boardgameid) Boardcount					
	from consultantboardgame			
	group by boardgameid			
		order by count(boardgameid) desc) as hi					
	join boardgame on hi.boardgameid = boardgame.boardgameid 
		order by Boardcount 
		desc limit 5;					


--Top 3 general skills					
select skill.skill, hi.Skillcount					
	from (select skillid, count(skillid) Skillcount					
	from consultantskill			
	group by skillid			
		order by count(skillid) desc) as hi					
	join skill on hi.skillid = skill.skillid 
		order by Skillcount 
		desc limit 3;					


--Top3 Hard skills					
select skill.skill, hi.Skillcount					
	from (select skillid, count(skillid) Skillcount					
	from consultantskill			
	group by skillid			
		order by count(skillid) desc) as hi					
	join skill on hi.skillid = skill.skillid 
		where skill.skilltypeid='1' 
		order by Skillcount 
		desc limit 3;					


--Top 3 soft skills					
select skill.skill, hi.Skillcount					
	from (select skillid, count(skillid) Skillcount					
	from consultantskill			
	group by skillid			
		order by count(skillid) desc) as hi					
	join skill on hi.skillid = skill.skillid 
		where skill.skilltypeid='2' 
		order by Skillcount 
		desc limit 3;		