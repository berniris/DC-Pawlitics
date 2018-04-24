\c DC_Pawlitics

-- remove any records and start the id sequence back to 1
DROP TABLE IF EXISTS affiliation CASCADE;
DROP TABLE IF EXISTS cats CASCADE;

-- create tables here
CREATE TABLE affiliation (
  id SERIAL PRIMARY KEY,
  name TEXT
);

CREATE TABLE cats (
  id SERIAL PRIMARY KEY,
  name TEXT,
  img_url TEXT,
  blurb TEXT,
  hashtags TEXT,
  issue TEXT,
  affiliation_id INTEGER REFERENCES affiliation(id)
);

-- create affiliation
INSERT INTO affiliation (
 name
 )
VALUES
('Registered Democat'),
('Registered Republicat'),
('Libpurrtarian'),
('Independent');


-- create cats
INSERT INTO cats (
name,
img_url,
blurb,
hashtags,
issue,
affiliation_id
)

VALUES
('Betsy & Mindy', 'https://scontent-iad3-1.cdninstagram.com/vp/b8bd430f1ece9cde3e38eebff7d3762c/5B62943B/t51.2885-15/e35/26864886_1604410686319023_6282000805591515136_n.jpg', 'These siblings are well versed in hiss-tory and know that walls have 2 sides and neither side is free! “Tear down that idea of a wall!” They say.', '#dccats #nobannowall #dccitycats #dcfakemews #dccats #siamesecats','Immigration', 2),
('Savannah', 'https://scontent-iad3-1.cdninstagram.com/vp/cd8e58aaa397e14c061eac4af79140d6/5B609850/t51.2885-15/e35/26870671_214966622384254_6081332327135313920_n.jpg', 'Savannah is an independent lady who needs no man to make her feel purrty. She’s tired of being cat-called when she’s living her life and wants all the girls out there to know', '#metoo. #meowtoo #catsagainstcatcalls #dccats #dcfakemews','Lady Cat Rights', 1),
('Coach', 'https://scontent-iad3-1.cdninstagram.com/vp/b01ae2a7b72c42fa4066d543009cbe18/5B6616CE/t51.2885-15/e35/26869588_409865596144497_5166562008857837568_n.jpg', 'Coach has been a DC kitty and political junky his whole life, but lately the news has been too much for him. “I’d honestly rather just plop down in front of The Office reruns and nibble on some Greenies,” he states with a sigh.', '#dcfakemews #theoffice #netflixandchill #dccats #dccitycats #dcliving', 'Education', 1),
('Doris', 'https://scontent-iad3-1.cdninstagram.com/vp/49b086b5f98b316077898762c933a6dd/5B76A051/t51.2885-15/e35/26865806_842919712558051_8211748342036692992_n.jpg', 'Meet Doris. Although she hates pretty much everyone and everything, what really grinds her gears is hearing that our oceans’ ecosystems are being destroyed by commercial fishing and pollution. “Such a cat-astrophy,” she cries. She also says “Go Pats!”', '#dcfakemews #dccats #protectourreefs #fish #cats #superbowl2018', 'Global Warming', 1),
('Willow', 'https://scontent-iad3-1.cdninstagram.com/vp/73e40a61d49678a8c6a94fe3013b2059/5B7805D6/t51.2885-15/e35/26872528_1958153147834502_8264978916867833856_n.jpg', 'Willow knows what she does with her body is her choice. “Just because I choose to lay on my back with my legs wide open doesn’t mean you can rub my belly. Lay your paws on me without my consent and you might get a clawed.”', '#sorrynotsorry #mybodymychoice #dcfakemews #independentcats #dccats #metoo #meowtoo #feminism #feministcats', 'Lady Cat Rights', 1),
('Sonic', 'https://scontent-iad3-1.cdninstagram.com/vp/da573c4cfdf63a3afed414b06a4fa547/5B9C2AD7/t51.2885-15/e35/27575431_724388681282409_6390485340116746240_n.jpg', 'Sonic is not your average cisgender cat. They don’t identify by their birth sex and prefers to remain gender-neutral. Their biggest fear is that, while we began to progress during Obama, that the current administration will continue to attack rights of those who have transitioned or those who just don’t identify by standard gender norms. “No matter which litter box I enter, cats look at me like a purrvert,” Sonic says with a tear. Let’s reverse these ideas of gender and promote progressive policies!','#reversegendernorms #allcatscreatedequal #humanrights #dccats #dcfakemews #dclife #chicagocatstoo','LGBTQ Rights', 1),
('Luna', 'https://scontent-iad3-1.cdninstagram.com/vp/8989798a805f4a8e257eb435644f786b/5B601445/t51.2885-15/e35/27877614_166780094045722_8780102803130417152_n.jpg', 'Intersectionality', 'Luna has recently acknowledged her white privilege. This pretty kitty is ready to have a seat at the table in the conversation about intersectional femeownism. She purrs: “While I’m not trying to discredit Lena Dunham or any other white feminists, the only actual hardships they’ve had to face have to do with the fact that they’re female. There are so many other barriers to equality in America!”', '#intersectionality #feminism #equality #dccats #dcitycats #dcfakemews #lawsoffmypaws #progressive #dc #siamese',1)
-- 'Telulah', 'https://scontent-iad3-1.cdninstagram.com/vp/b5696461ca63c04be61e6b26bace1bb6/5B6DA4D4/t51.2885-15/e35/27576429_547135178990211_4243200420253532160_n.jpg', 'Drain the Swamp', 2),
-- 'Spike', 'https://scontent-iad3-1.cdninstagram.com/vp/39c986f6a20bd72bb707a0c9053ebb11/5B60C28A/t51.2885-15/e35/27894485_180864132522007_2213111761895161856_n.jpg', 'Healthcare', 1),
-- 'Anonymous', 'https://scontent-iad3-1.cdninstagram.com/vp/db250f78c4def379812e3a1ce4e6e7f1/5B6306F8/t51.2885-15/e35/27574182_596195894047887_8052525516302843904_n.jpg', 'Healtcare', 1),
-- 'Millenial Kitty', 'https://scontent-iad3-1.cdninstagram.com/vp/ce239535c2ceb56e602d60bb8468a4ae/5B65C925/t51.2885-15/e35/27579964_1794871403916936_3363513791441534976_n.jpg' 'Healtcare', 1),
-- 'Jacob & Pema', 'https://scontent-iad3-1.cdninstagram.com/vp/c2ecf083e914444eb3ccbeab94452fcb/5B9864DE/t51.2885-15/e35/27580523_1997381307167283_8107731853399556096_n.jpg', 'Poverty', 1),
-- 'Kentucky Kitty', 'https://scontent-iad3-1.cdninstagram.com/vp/8df631f92817b64a3a415ed55dbfe26b/5B627C83/t51.2885-15/e35/27574429_730628803799650_1354235666971492352_n.jpg', 'Immigration', 1),
-- 'Bianca & Violet', 'https://scontent-iad3-1.cdninstagram.com/vp/d8b69fe14971f4e954f6c18f96780a0d/5B6FCEB1/t51.2885-15/e35/27573699_1466013526843739_5738568076916424704_n.jpg', 'Family Values', 2),
-- 'Oscar', 'https://scontent-iad3-1.cdninstagram.com/vp/f85e2c2e091d791fc63056a071cbeb92/5B5A9DD6/t51.2885-15/e35/27579135_2010389442334829_5505866731639275520_n.jpg', 'Mewontal Health', 1),
-- 'Miles', 'https://scontent-iad3-1.cdninstagram.com/vp/177e586f284db3ac1bb996bb0eba4b53/5B6D9F36/t51.2885-15/e35/27878941_2081130748772466_1682050716580970496_n.jpg', 'Independent', 'Global Warming', 1),
-- 'Layla', 'https://scontent-iad3-1.cdninstagram.com/vp/abdc926494fd728b931fe263dd2745c1/5B9BFEB2/t51.2885-15/e35/27880379_792298754304817_5537767983482404864_n.jpg', 'Global Warming', 1),
-- 'Anonymous', 'https://scontent-iad3-1.cdninstagram.com/vp/3fad85d70b5dffd1d508c62651556167/5B6E3393/t51.2885-15/e35/27880367_206065173471682_4483139249280909312_n.jpg', 'Poverty', 1),
-- 'Gazpacho', 'https://scontent-iad3-1.cdninstagram.com/vp/2086b0581399edb89d35e830880efd27/5B987520/t51.2885-15/e35/27890672_1031073327031219_3056175466567172096_n.jpg', 'Gun Control', 1),
-- 'Preston', 'https://scontent-iad3-1.cdninstagram.com/vp/1e41a8ab7e8e6b11efc1181f84020329/5B7B3B64/t51.2885-15/e35/27891527_591377894542739_5028607470331756544_n.jpg', 'Immigration', 1),
-- 'Anonymous Homeless Kitty', 'https://scontent-iad3-1.cdninstagram.com/vp/affdb25f50afc18f4649a1be69db5290/5B777DCC/t51.2885-15/e35/28155383_166419264152249_1112487402582048768_n.jpg', 'Poverty', 1),
-- 'Mason', 'https://scontent-iad3-1.cdninstagram.com/vp/20393f9c854ffc26683926fac1156b26/5B62E681/t51.2885-15/e35/28158549_179016422824773_8474025046862462976_n.jpg', 'Libpurrtarian', 'Purrsitive Body Image', 1),
-- 'Virginia', 'https://scontent-iad3-1.cdninstagram.com/vp/56dcbefd0890293720f6ab6aa3ce343a/5B57B6E6/t51.2885-15/e35/28433865_1639673292736246_4765493526056140800_n.jpg', 'Social Justice', 1),
-- 'Betsy', 'https://scontent-iad3-1.cdninstagram.com/vp/3f6e12177eb866c7b66b910f3d4893b9/5B6F1591/t51.2885-15/e35/28154172_149796365687495_3641266040823873536_n.jpg', 'Meowntal Health', 1),
-- 'Tallulah', 'https://scontent-iad3-1.cdninstagram.com/vp/acff5707ef03ea3682efa19aaf9c2c92/5B5B3580/t51.2885-15/e35/28428333_1519550118170726_274820672209813504_n.jpg', 'Music Medicine', 1),
-- 'Dusty','https://scontent-iad3-1.cdninstagram.com/vp/453051259db86b9eaab02a6fd5b22bc3/5B55AEBF/t51.2885-15/e35/28433752_2116432918591271_4236922415017361408_n.jpg', 'Social Justice', 1),
-- 'Chuck', 'https://scontent-iad3-1.cdninstagram.com/vp/a5732d6063305283684ad844451f2540/5B69CEDB/t51.2885-15/e35/28433941_141172436704538_5841768285544120320_n.jpg', 'Undecided', 'Internet Neutrality', 4),
-- 'Pico', 'https://scontent-iad3-1.cdninstagram.com/vp/ec374e5141e88b5df651e351dd0d3a2e/5B5A4B38/t51.2885-15/e35/28765699_570928766607564_6703749916700704768_n.jpg', 'Equal Rights', 1),
-- 'Lucy', 'https://scontent-iad3-1.cdninstagram.com/vp/dc465d04c2fa23776ae8e0b3f3b966ed/5B9C65AA/t51.2885-15/e35/28751788_621878484822229_3977247137523040256_n.jpg', 'Social Justice', 1),
-- 'Henry','https://scontent-iad3-1.cdninstagram.com/vp/caac6f998594777cccfd8d16fa558018/5B5B0304/t51.2885-15/e35/28436495_359139917937586_569130982590906368_n.jpg', 'Social Justice', 1),
-- 'Jenkins', 'https://scontent-iad3-1.cdninstagram.com/vp/2de2af761cc0d6ff2ff43916ad1a5c6d/5B78D3A9/t51.2885-15/e35/29092594_184952948808352_1293876773573885952_n.jpg', 'Gun Control', 1),
-- 'Earl Grey', 'https://scontent-iad3-1.cdninstagram.com/vp/c4a753193c1bced5fbb6bb47c70a5b2c/5B6BA99E/t51.2885-15/e35/29093189_361031007746862_4945719729709907968_n.jpg', 'Internet Neutrality', 3),
-- 'Norbert', 'https://scontent-iad3-1.cdninstagram.com/vp/f6acd91880c2967e5d48eb39525db2e2/5B5533FB/t51.2885-15/e35/29087393_604436853282941_2250549007539503104_n.jpg' 'Small Business', 2),
-- 'Otto', 'https://scontent-iad3-1.cdninstagram.com/vp/66824a37a197993975fdb72fccacfe00/5B60C3D1/t51.2885-15/e35/29401514_592876424382180_3881544988311420928_n.jpg', 'Gun Control', 1),
-- 'Reina', 'https://scontent-iad3-1.cdninstagram.com/vp/4f72c4bafde163fdcb9fa3c62fa76c53/5B6DAAFA/t51.2885-15/e35/29401233_162383017760714_1393375824199024640_n.jpg', 'Lady Cat Rights', 1),
-- 'Anonymous Aspurrring Actress', 'https://scontent-iad3-1.cdninstagram.com/vp/9380346d0c03d0e49088b01eccf82611/5B7641BB/t51.2885-15/e35/29096184_1779744812320322_8427709794579644416_n.jpg','Lady Cat Rights', 1),
-- 'Twix', 'https://scontent-iad3-1.cdninstagram.com/vp/8197bf8b1880ba05780ed0415de60474/5B6E44B4/t51.2885-15/e35/29715722_177891079550903_306945709028933632_n.jpg', 'Meowntal Health', 1),
-- 'Penny Lane', 'https://scontent-iad3-1.cdninstagram.com/vp/7b247ccff0793a26d9f522924501e17b/5B769F27/t51.2885-15/e35/30086471_442966582813081_5019732697803653120_n.jpg', 'Peace & Conflict Resolution', 1),
-- 'Vanna', 'https://scontent-iad3-1.cdninstagram.com/vp/4578e4dc7064f421c67de91b160bc88c/5B602F8D/t51.2885-15/e35/29716076_1775612225836535_8513219784534392832_n.jpg', 'Lady Cat Rights', 1),
-- 'Lucky', 'https://scontent-iad3-1.cdninstagram.com/vp/40feac3c40f113a89f8294dc1629f77a/5B5B74FA/t51.2885-15/e35/30079908_852878464899871_8695883352063868928_n.jpg', 'Social Justice', 1),
-- 'Lucy', 'https://scontent-iad3-1.cdninstagram.com/vp/c01bc7466826c365215bd99ec600cd2e/5B575F78/t51.2885-15/e35/30602032_434843563623857_4746267160790171648_n.jpg', , 'Social Justice', 1),
-- 'Scrum, Perl & Bash','https://scontent-iad3-1.cdninstagram.com/vp/0d349e220a606ab83b65ebed2434d7c1/5B555AAC/t51.2885-15/e35/30086335_184545125503599_3236175136465879040_n.jpg', 'Princess Butterscotch', 'https://scontent-lga3-1.cdninstagram.com/vp/ecac5e8436d220c1ccd09fd02315db9a/5B550366/t51.2885-15/e35/26863564_228702527674135_798941076143472640_n.jpg', 'This is Princess Butterscotch. She says “I want my future children to have access to safe and affordable health care!', '#CHIP #dccats #catsofdc #dcfakemews #thepeetapeisreal', 'Education', 1),
-- 'Leo', 'https://scontent-lga3-1.cdninstagram.com/vp/b2bf37a99a207604ca6a592c375eba50/5B55CAF0/t51.2885-15/e35/26869279_1523403224452462_7337148590885699584_n.jpg', 'Leo is a young, gay feline who came out in the last year and wants to join the army when he’s older. “You’ve got to be kitten me,” he says, “anyone that wants to fight for our country should be able to!','#dccats #pawlitics #dcgaycats #USA #dccatsrule #dcfakemews', 'LGBTQ Rights', 2),
-- 'Kitty', 'https://scontent-lga3-1.cdninstagram.com/vp/f0caa53a0412cf8b4d3c47debc201f98/5B534926/t51.2885-15/e35/27576462_1655578561155136_726851553318666240_n.jpg', 'This is Tomas, street name “Kitty,” because he’s ashamed of his immigrant roots. He voted for Donald Trump and now he lives in fear, because his family may be deported. Let’s all help him and his family get back on their feet!', '#dccats #catshame #kitty #catsofdc #bloomingdale #dcfakemews', 'Immigration', 1);
-- 'Leo',
-- 'Princess Butterscotch'
