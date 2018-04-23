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
('Registered Democat');

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
('Princess Butterscotch', 'https://scontent-lga3-1.cdninstagram.com/vp/ecac5e8436d220c1ccd09fd02315db9a/5B550366/t51.2885-15/e35/26863564_228702527674135_798941076143472640_n.jpg', 'This is Princess Butterscotch. She says “I want my future children to have access to safe and affordable health care!', '#CHIP #dccats #catsofdc #dcfakemews #thepeetapeisreal', 'Education', 1),
('Leo', 'https://scontent-lga3-1.cdninstagram.com/vp/b2bf37a99a207604ca6a592c375eba50/5B55CAF0/t51.2885-15/e35/26869279_1523403224452462_7337148590885699584_n.jpg', 'Leo is a young, gay feline who came out in the last year and wants to join the army when he’s older. “You’ve got to be kitten me,” he says, “anyone that wants to fight for our country should be able to!','#dccats #pawlitics #dcgaycats #USA #dccatsrule #dcfakemews', 'LGBTQ Rights', 2),
('Kitty', 'https://scontent-lga3-1.cdninstagram.com/vp/f0caa53a0412cf8b4d3c47debc201f98/5B534926/t51.2885-15/e35/27576462_1655578561155136_726851553318666240_n.jpg', 'This is Tomas, street name “Kitty,” because he’s ashamed of his immigrant roots. He voted for Donald Trump and now he lives in fear, because his family may be deported. Let’s all help him and his family get back on their feet!', '#dccats #catshame #kitty #catsofdc #bloomingdale #dcfakemews', 'Immigration', 1);


