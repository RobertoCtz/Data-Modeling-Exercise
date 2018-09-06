CREATE DATABASE datamodeling
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.UTF-8'
    LC_CTYPE = 'en_US.UTF-8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

\c datamodeling

CREATE TABLE SnackType(
  SnackTypeID SERIAL,
  SnackType text,
  PRIMARY KEY (SnackTypeID)
);

CREATE TABLE Snack (
    SnackID SERIAL,
    Snack text,
    SnackTypeID int,
    FOREIGN KEY (SnackTypeID) REFERENCES SnackType(SnackTypeID),
    PRIMARY KEY (SnackID)
  );

  CREATE TABLE Path(
    PathID SERIAL,
    Path text,
    PRIMARY KEY (PathID)
  );

CREATE TABLE Consultant (
    ConsultantID SERIAL,
    Firstnames text NOT NULL,
    Lastnames text NOT NULL,
    SnackID int,
    PathID int,
    FOREIGN KEY (SnackID) REFERENCES Snack(SnackID),
    FOREIGN KEY (PathID) REFERENCES Path(PathID),
    PRIMARY KEY (ConsultantID)
);









CREATE TABLE Boardgame (
    BoardgameID SERIAL,
    Boardgame text,
    BoardgameRank int,
    PRIMARY KEY (BoardgameID)
);

CREATE TABLE ConsultantBoardgame (
  ConsultantBoardgamesID SERIAL,
  ConsultantID int,
  BoardgameID int,
  FOREIGN KEY (ConsultantID) REFERENCES Consultant(ConsultantID),
  FOREIGN KEY (BoardgameID) REFERENCES Boardgame(BoardgameID),
  PRIMARY KEY (ConsultantBoardgamesID)
);


CREATE TABLE SkillType(
  SkillTypeID SERIAL,
  SkillType text,
  PRIMARY KEY (SkillTypeID)
);


CREATE TABLE Skill(
    SkillID SERIAL,
    Skill text,
    SkillType int,
    SkillRank int,
    FOREIGN KEY (SkillType) REFERENCES SkillType(SkillTypeID),
    PRIMARY KEY (SkillID)
);

CREATE TABLE ConsultantSkill (
  ConsultantSkillID SERIAL,
  ConsultantID int,
  SkillID int,
  FOREIGN KEY (ConsultantID) REFERENCES Consultant(ConsultantID),
  FOREIGN KEY (SkillID) REFERENCES Skill(SkillID),
  PRIMARY KEY (ConsultantSkillID)
);


CREATE TABLE DrinkType(
  DrinkTypeID SERIAL,
  DrinkType text,
  PRIMARY KEY (DrinkTypeID)
);


CREATE TABLE Drink(
    DrinkID SERIAL,
    Drink text,
    DrinkType int,
    FOREIGN KEY (DrinkType) REFERENCES DrinkType(DrinkTypeID),
    PRIMARY KEY (DrinkID)
);

CREATE TABLE ConsultantDrink (
  ConsultantDrinkID SERIAL,
  ConsultantID int,
  DrinkID int,
  FOREIGN KEY (ConsultantID) REFERENCES Consultant(ConsultantID),
  FOREIGN KEY (DrinkID) REFERENCES Drink(DrinkID),
  PRIMARY KEY (ConsultantDrinkID)
);
