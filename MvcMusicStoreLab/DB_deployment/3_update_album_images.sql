--select @@VERSION

--select * from Albums  --update albums set albumarturl='~'+albumarturl

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/51pQDIyFGOL._SL500_AA280_.jpg'
where AlbumID=6 and GenreID =1 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/51W5QF1a2zL._SL500_AA280_.jpg'
where AlbumID=5 and GenreID =1 

update albums set albumarturl = 'http://g-ecx.images-amazon.com/images/G/01/ciu/94/7e/eb7bb2c008a06e1596ac1010.L._AA300_.jpg'
where AlbumID=4 and GenreID =1 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/512d%2By8BkIL._SL500_AA300_.jpg'
where AlbumID=3 and GenreID =1 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/51CMWAS78KL._SL500_AA300_.jpg'
where AlbumID=2 and GenreID =1 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/71e0kjiXMsL._AA300_.jpg'
where AlbumID=1 and GenreID =1 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/51CDYqoozJL._SL500_AA300_.jpg'
where AlbumID=7 and GenreID =1 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/61yPEYl3BxL._SL500_AA300_.jpg'
where AlbumID=8 and GenreID =1 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/41NH8PWNYFL._SL500_AA300_.jpg'
where AlbumID=9 and GenreID =1 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/51%2Bnw54h8pL._SL500_AA300_.jpg'
where AlbumID=10 and GenreID =1 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/61BEUlkRt6L._SL500_AA300_.jpg'
where AlbumID=11 and GenreID =1 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/51uShu-n5qL._SL500_AA300_.jpg'
where AlbumID=12 and GenreID =1 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/51%2BJgKQIO5L._SL500_AA300_.jpg'
where AlbumID=13 and GenreID =1 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/51XoioYxFOL._SL500_AA300_.jpg'
where AlbumID=14 and GenreID =1 


--temporarily delete any other albums in Classic, basically alburmID between 15 and 34
delete --select * 
from dbo.Albums where AlbumArtUrl not like 'http://%'
and genreID=1
and albumID between 15 and 34

--now move to Jazz
update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/51Jns6v1qML._SL500_AA300_.jpg'
where AlbumID=35 and GenreID =2; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/51qgu7KFoUL._SL500_AA300_.jpg'
where AlbumID=36 and GenreID =2; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/51QJN49hSUL._SL500_AA280_.jpg'
where AlbumID=37 and GenreID =2; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/41kAe8PFbXL._SL500_AA300_.jpg'
where AlbumID=38 and GenreID =2; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/31J8X70DGHL._SL500_AA300_.jpg'
where AlbumID=39 and GenreID =2; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/51J-2G8Z5tL._SL500_AA300_.jpg'
where AlbumID=40 and GenreID =2; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/51Z4S17P9EL._SL500_AA300_.jpg'
where AlbumID=41 and GenreID =2; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/51fQaV5nKcL._SL500_AA300_.jpg'
where AlbumID=42 and GenreID =2; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/514bFksiL1L._SL500_AA300_.jpg'
where AlbumID=43 and GenreID =2; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/514bFksiL1L._SL500_AA300_.jpg'
where AlbumID=44 and GenreID =2; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/418N9WBMBTL._SL500_AA300_.jpg'
where AlbumID=45 and GenreID =2; 

update albums set albumarturl = 'http://g-ecx.images-amazon.com/images/G/01/ciu/a0/d1/934762e89da0233e094b2110.L.jpg'
where AlbumID=46 and GenreID =2; 

--- now move to Rock, 47-60, first 14,
update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/41LILmwtooL._SL500_AA300_.jpg'
where AlbumID=47 and GenreID =3; 

update albums set albumarturl = 'http://g-ecx.images-amazon.com/images/G/01/ciu/c7/c3/d76a810ae7a05eca6c84a110.L._AA300_.jpg'
where AlbumID=48 and GenreID =3; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/51NlJQ6vcOL._SL500_AA300_.jpg'
where AlbumID=49 and GenreID =3; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/51aInWlHfgL._SL500_AA300_.jpg'
where AlbumID=50 and GenreID =3; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/51ZD21W9D9L._SL500_AA300_.jpg'
where AlbumID=51 and GenreID =3; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/51F5ZruvsCL._SL500_AA300_.jpg'
where AlbumID=52 and GenreID =3; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/51JE69Ud-uL._SL500_AA300_.jpg'
where AlbumID=53 and GenreID =3; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/514RWTJvpHL._SL500_AA300_.jpg'
where AlbumID=54 and GenreID =3; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/610E8%2BVxO%2BL._SL500_AA300_.jpg'
where AlbumID=55 and GenreID =3; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/51lysfNuXiL._SL500_AA300_.jpg'
where AlbumID=56 and GenreID =3; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/41DNGQV2ZVL._SL500_AA300_.jpg'
where AlbumID=57 and GenreID =3; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/51k0ME4tfPL._SL500_AA300_.jpg'
where AlbumID=58 and GenreID =3; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/61aFtJawP-L._SL500_AA300_.jpg'
where AlbumID=59 and GenreID =3; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/51aH5qfo54L._SL500_AA300_.jpg'
where AlbumID=60 and GenreID =3; 


--remove the rest from Rock
delete --select * 
from dbo.Albums where AlbumArtUrl not like 'http://%'
and genreID=3
and albumID between 61 and 157


--move onto to Pop
update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/51s25LLd74L._SL500_AA300_.jpg'
where AlbumID=158 and GenreID =4; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/61CMT5RTn%2BL._SL500_AA300_.jpg'
where AlbumID=159 and GenreID =4; 

--move to Disco
update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/512hukpYOYL._SL500_AA300_.jpg'
where AlbumID=160 and GenreID =5; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/516JBBNCVCL._SL500_AA300_.jpg'
where AlbumID=161 and GenreID =5; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/51zrD0V6f2L._SL500_AA300_.jpg'
where AlbumID=162 and GenreID =5; 

-- Latin, first 14
update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/51QKs2TThYL._SL500_AA300_.jpg'
where AlbumID=163 and GenreID =6; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/41eofywMsYL._SL500_AA300_.jpg'
where AlbumID=164 and GenreID =6; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/51wFzZqEHlL._SL500_AA280_.jpg'
where AlbumID=165 and GenreID =6; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/51i0DYw%2BNsL._SL500_AA280_.jpg'
where AlbumID=166 and GenreID =6; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/41PGWA0M6AL._SL500_AA300_.jpg'
where AlbumID=167 and GenreID =6; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/51H93S4J0PL._SL500_AA300_.jpg'
where AlbumID=168 and GenreID =6; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/41S39Y4XYYL._SL500_AA300_.jpg'
where AlbumID=169 and GenreID =6; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/319F9JG62NL._SL500_AA300_.jpg'
where AlbumID=170 and GenreID =6; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/41CEFjYCZzL._SL500_AA300_.jpg'
where AlbumID=171 and GenreID =6; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/41CEFjYCZzL._SL500_AA300_.jpg'
where AlbumID=172 and GenreID =6; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/410YYCBV87L._SL500_AA300_.jpg'
where AlbumID=173 and GenreID =6; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/31qUqqDqTOL._SL500_AA300_.jpg'
where AlbumID=174 and GenreID =6; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/41wsl9KAxGL._SL500_AA300_.jpg'
where AlbumID=175 and GenreID =6; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/51EMcKWGVRL._SL500_AA280_.jpg'
where AlbumID=176 and GenreID =6; 


--then remove rest from genreid = 6... Actually, why don't we leave it???
-- so no delete here
 
--move onto genreid=7
update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/51cagP4PTfL._SL500_AA300_.jpg'
where AlbumID=198 and GenreID =7; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/41Ci%2Bu3OL3L._SL500_AA300_.jpg'
where AlbumID=199 and GenreID =7; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/41Ci%2Bu3OL3L._SL500_AA300_.jpg'
where AlbumID=200 and GenreID =7; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/517g6XlFXYL._SL500_AA300_.jpg'
where AlbumID=201 and GenreID =7; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/61CM5D7qviL._SL500_AA300_.jpg'
where AlbumID=202 and GenreID =7; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/6129CM4GCKL._SL500_AA300_.jpg'
where AlbumID=203 and GenreID =7; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/510UFmLMtBL._SL500_AA300_.jpg'
where AlbumID=204 and GenreID =7; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/61uwk1Y253L._SL500_AA300_.jpg'
where AlbumID=205 and GenreID =7; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/514jN-Mu4uL._SL500_AA300_.jpg'
where AlbumID=206 and GenreID =7; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/517ANZKJ08L._SL500_AA300_.jpg'
where AlbumID=207 and GenreID =7; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/61ehF-Ub08L._SL500_AA300_.jpg'
where AlbumID=208 and GenreID =7; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/61KpcdrUFxL._SL500_AA300_.jpg'
where AlbumID=209 and GenreID =7; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/61Jy9xLQBjL._SL500_AA300_.jpg'
where AlbumID=210 and GenreID =7; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/61hHfMz7pIL._SL500_AA300_.jpg'
where AlbumID=211 and GenreID =7; 

--leave the rest of GenreID=7 unchanged

--move onto Alternative, genre = 8
update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/51Hu-hJWGCL._SL500_AA300_.jpg'
where AlbumID=232 and GenreID =8; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/519yy41Xe2L._SL500_AA300_.jpg'
where AlbumID=233 and GenreID =8; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/61Xr60BIFpL._SL500_AA300_.jpg'
where AlbumID=234 and GenreID =8; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/51YhAafhPPL._SL500_AA300_.jpg'
where AlbumID=235 and GenreID =8; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/518P0F1DBGL._SL500_AA300_.jpg'
where AlbumID=236 and GenreID =8; 

--move onto Regga, genre = 9
update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/411JW5GT16L._SL500_AA300_.jpg'
where AlbumID=237 and GenreID =9; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/41pnPfMMhVL._SL500_AA300_.jpg'
where AlbumID=238 and GenreID =9; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/41bRIGa1q4L._SL500_AA300_.jpg'
where AlbumID=239 and GenreID =9; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/514GWDAMBZL._SL500_AA300_.jpg'
where AlbumID=240 and GenreID =9; 

--move onto the last genre Blues, genre = 10
update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/41479YB60GL._SL500_AA300_.jpg'
where AlbumID=241 and GenreID =10; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/41wsl9KAxGL._SL500_AA300_.jpg'
where AlbumID=242 and GenreID =10; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/618l2lF4bwL._SL500_AA300_.jpg'
where AlbumID=243 and GenreID =10; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/51U5VUAwjGL._SL500_AA300_.jpg'
where AlbumID=244 and GenreID =10; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/61%2B8g5E-wgL._SL500_AA300_.jpg'
where AlbumID=245 and GenreID =10; 

update albums set albumarturl = 'http://ecx.images-amazon.com/images/I/61%2B8g5E-wgL._SL500_AA300_.jpg'
where AlbumID=246 and GenreID =10; 


