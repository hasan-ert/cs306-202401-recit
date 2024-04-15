CREATE TABLE Sailors (
  sid INTEGER PRIMARY KEY,
  sname TEXT NOT NULL,
  rating INTEGER NOT NULL,
  age INTEGER NOT NULL
);

CREATE TABLE Boats (
  bid INTEGER PRIMARY KEY,
  bname TEXT NOT NULL,
  btype TEXT NOT NULL
);


CREATE TABLE Reserves (
  sid INTEGER NOT NULL,
  bid INTEGER NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  PRIMARY KEY (sid, bid,start_date),
  FOREIGN KEY (sid) REFERENCES Sailors(sid),
  FOREIGN KEY (bid) REFERENCES Boats(bid)
);
