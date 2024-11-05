CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    AuthorName VARCHAR(100) NOT NULL,
    Biography TEXT
);

CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(100) NOT NULL,
    Description TEXT
);

CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(200) NOT NULL,
    PublicationYear YEAR,
    ISBN VARCHAR(20),
    Price DECIMAL(10, 2),
    AuthorID INT,
    CategoryID INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID),
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

SELECT Books.Title, Authors.AuthorName, Categories.CategoryName
FROM Books
JOIN Authors ON Books.AuthorID = Authors.AuthorID
JOIN Categories ON Books.CategoryID = Categories.CategoryID;
