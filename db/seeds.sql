\c DC_Pawlitics

-- remove any records and start the id sequence back to 1
DROP TABLE IF EXISTS cats CASCADE;
DROP TABLE IF EXISTS blurbs CASCADE;

-- add create tables here
CREATE TABLE cats (
  id SERIAL PRIMARY KEY,
  name TEXT,
  img_url TEXT,
  affiliation TEXT,
  issue TEXT
);

CREATE TABLE blurbs (
  id SERIAL PRIMARY KEY,
  text_blurb TEXT,
  hashtags TEXT,
  cat_id INTEGER REFERENCES cats(id)
);

-- create cats
INSERT INTO cats
(name, img_url, affiliation, issue)
VALUES
('Princess Butterscotch', 'https://scontent-lga3-1.cdninstagram.com/vp/ecac5e8436d220c1ccd09fd02315db9a/5B550366/t51.2885-15/e35/26863564_228702527674135_798941076143472640_n.jpg', 'Registered Democat', 'Education'),
('Leo', 'https://scontent-lga3-1.cdninstagram.com/vp/b2bf37a99a207604ca6a592c375eba50/5B55CAF0/t51.2885-15/e35/26869279_1523403224452462_7337148590885699584_n.jpg', 'Registered Democat', 'LGBTQ Rights'),
('Kitty', 'https://scontent-lga3-1.cdninstagram.com/vp/f0caa53a0412cf8b4d3c47debc201f98/5B534926/t51.2885-15/e35/27576462_1655578561155136_726851553318666240_n.jpg', 'Registered Republicat', 'Immigration'),
('Betsy & Mindy', 'https://scontent-iad3-1.cdninstagram.com/vp/b8bd430f1ece9cde3e38eebff7d3762c/5B62943B/t51.2885-15/e35/26864886_1604410686319023_6282000805591515136_n.jpg', 'Registered Republicat', 'Immigration');


-- create blurbs
INSERT INTO blurbs
(text_blurb, hashtags, cat_id)
VALUES
('This is Princess Butterscotch. She says “I want my future children to have access to safe and affordable health care!', '#CHIP #dccats #catsofdc #dcfakemews #thepeetapeisreal', 1),
('Leo is a young, gay feline who came out in the last year and wants to join the army when he’s older. “You’ve got to be kitten me,” he says, “anyone that wants to fight for our country should be able to!','#dccats #pawlitics #dcgaycats #USA #dccatsrule #dcfakemews', 2),
('This is Tomas, street name “Kitty,” because he’s ashamed of his immigrant roots. He voted for Donald Trump and now he lives in fear, because his family may be deported. Let’s all help him and his family get back on their feet!', '#dccats #catshame #kitty #catsofdc #bloomingdale #dcfakemews', 3),
('These siblings are well versed in hiss-tory and know that walls have 2 sides and neither side is free! “Tear down that idea of a wall!” They say.', '#dccats #nobannowall #dccitycats #dcfakemews #dccats #siamesecats', 4);
