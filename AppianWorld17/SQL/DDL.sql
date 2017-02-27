CREATE TABLE NTS_GAME (
	ID INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	START_TIME DATETIME,
	FIRST_NAME VARCHAR(255),
	LAST_NAME VARCHAR(255),
	COMPANY_NAME VARCHAR(255),
	TITLE VARCHAR(255),
	EMAIL VARCHAR(255),
	REASON VARCHAR(4000)
);

CREATE TABLE NTS_SHOT (
	ID INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	NTS_GAME_ID INT(11),
	POINTS INT(11),
	SHOT_TIME DATETIME
);

ALTER TABLE NTS_SHOT
	ADD KEY FK_SHOT_NTS_GAME_ID (NTS_GAME_ID);
	
ALTER TABLE NTS_SHOT
	ADD CONSTRAINT FK_SHOT_NTS_GAME_ID FOREIGN KEY (NTS_GAME_ID) REFERENCES NTS_GAME (ID) ON DELETE NO ACTION ON UPDATE NO ACTION;