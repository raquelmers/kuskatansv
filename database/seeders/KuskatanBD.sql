CREATE TABLE Bus (
 idBus INT(4) NOT NULL,
 busPlate VARCHAR(10),
 nameBus VARCHAR(5),
 numSeats INT(2),
 busStatus VARCHAR(10)
);

ALTER TABLE Bus ADD CONSTRAINT PK_Bus PRIMARY KEY (idBus);


CREATE TABLE Travel (
 idTravel INT(4) NOT NULL,
 typeTravel VARCHAR(10),
 idBus INT(4)
);

ALTER TABLE Travel ADD CONSTRAINT PK_Travel PRIMARY KEY (idTravel);


CREATE TABLE User (
 idUser INT(4) NOT NULL,
 firstName VARCHAR(50),
 lastName VARCHAR(50),
 userName VARCHAR(15),
 userPasswrd VARCHAR(12)
);

ALTER TABLE User ADD CONSTRAINT PK_User PRIMARY KEY (idUser);


CREATE TABLE Counter (
 idUser INT(4) NOT NULL
);

ALTER TABLE Counter ADD CONSTRAINT PK_Counter PRIMARY KEY (idUser);


CREATE TABLE Departure (
 idDeparture INT(4) NOT NULL,
 departPlace VARCHAR(10),
 departDate DATE,
 departTime TIME
);

ALTER TABLE Departure ADD CONSTRAINT PK_Departure PRIMARY KEY (idDeparture);


CREATE TABLE Passenger (
 idUser INT(4) NOT NULL,
 typePassenger VARCHAR(10)
);

ALTER TABLE Passenger ADD CONSTRAINT PK_Passenger PRIMARY KEY (idUser);


CREATE TABLE Ticket (
 idTravel INT(4) NOT NULL,
 idTicket INT,
 fareChildren FLOAT(6),
 fareAdult FLOAT(6)
);

ALTER TABLE Ticket ADD CONSTRAINT PK_Ticket PRIMARY KEY (idTravel);


CREATE TABLE Arrival (
 idArrival INT(4) NOT NULL,
 idDeparture INT(4) NOT NULL,
 arrivalPlace VARCHAR(50),
 arrivalDate DATE,
 arrivalTime TIME
);

ALTER TABLE Arrival ADD CONSTRAINT PK_Arrival PRIMARY KEY (idArrival,idDeparture);


ALTER TABLE Travel ADD CONSTRAINT FK_Travel FOREIGN KEY (idBus) REFERENCES Bus (idBus);


ALTER TABLE Counter ADD CONSTRAINT FK_Counter FOREIGN KEY (idUser) REFERENCES User (idUser);


ALTER TABLE Passenger ADD CONSTRAINT FK_Passenger FOREIGN KEY (idUser) REFERENCES User (idUser);


ALTER TABLE Ticket ADD CONSTRAINT FK_Ticket FOREIGN KEY (idTravel) REFERENCES Travel (idTravel);


ALTER TABLE Arrival ADD CONSTRAINT FK_Arrival FOREIGN KEY (idDeparture) REFERENCES Departure (idDeparture);


