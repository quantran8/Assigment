USE STUDENT
CREATE TABLE AUTHOR(
					   AUTHORID CHAR(20) NOT NULL,
					   AUTHORFIRSTNAME NVARCHAR(20),
					   AUTHORLASTNAME NVARCHAR(20),
					   PRIMARY KEY(AUTHORID),
					
					   
					   );
CREATE TABLE BOOK_AUTHOR(
                       ISBN_NUMBER INT NOT NULL UNIQUE ,
					   AUTHORID CHAR(20) NOT NULL,
					   PRIMARY KEY(ISBN_NUMBER,AUTHORID),
					   FOREIGN KEY (AUTHORID) REFERENCES AUTHOR(AUTHORID),
					   
					   
					   );

CREATE TABLE PUBLISHER (

						PUBLISHERID CHAR(20) NOT NULL PRIMARY KEY,
						PUBLISHERNAME NVARCHAR(20),
                       );
							
CREATE TABLE CATEGORY(
						CATEGORYID CHAR(20) NOT NULL PRIMARY KEY,
						CATEGORYDESCRIPTION NVARCHAR(30),
						);
CREATE TABLE BOOK_CATEGORY(
							ISBN_NUMBER INT NOT NULL ,
							CATEGORYID CHAR(20) NOT NULL,
							PRIMARY KEY(ISBN_NUMBER,CATEGORYID),
							FOREIGN KEY (CATEGORYID) REFERENCES CATEGORY(CATEGORYID)
							);

CREATE TABLE BOOK_FORMAT(
						BOOKFORMAT CHAR(20) NOT NULL PRIMARY KEY,
						FORMATDESCRIPTION NVARCHAR(30),
						);
CREATE TABLE BOOK_TITLE(
                       ISBN_NUMBER INT NOT NULL  ,
					   TITLE NVARCHAR(20),
					   PUBLISHERID CHAR(20),
					   PUBLISHEDDATE DATE,
					   BOOKFORMAT NVARCHAR(20),
					   PAGES INT,
					   PRICE DECIMAL,
					   PRIMARY KEY(ISBN_NUMBER),
					   FOREIGN KEY (ISBN_NUMBER) REFERENCES BOOK_AUTHOR(ISBN_NUMBER),
					   FOREIGN KEY (PUBLISHERID) REFERENCES PUBLISHER(PUBLISHERID),
					   
					   );
