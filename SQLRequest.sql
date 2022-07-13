CREATE TABLE Products (
	Id INT PRIMARY KEY,
	"Name" TEXT
);

INSERT INTO Products
VALUES
	(1, 'Piano'),
	(2, 'Guitar'),
	(3, 'Nissan'),
	(4, 'BMW'),
	(5, 'Lord_of_the_Rings'),
	(6, 'Fanta'),
	(7, 'Tarxyn'),
	(8, 'Radio'),
	(9, 'Flute'),
	(10, 'Television'),
	(11, 'Dark_beginnings'),
	(12, 'Burn'),
	(13, 'Cat'),
	(14, 'Notebook'),
	(15, 'Duck'),
	(16, 'Mercedes'),
	(17, 'Winston'),
	(18, 'Cow');

CREATE TABLE Categories (
	Id INT PRIMARY KEY,
	"Name" TEXT
);

INSERT INTO Categories
VALUES
	(1, 'book'),
	(2, 'Car'),
	(3, 'Animal'),
	(4, 'Musical_instrument'),
	(5, 'Drink');


CREATE TABLE ProductCategories (
	ProductId INT FOREIGN KEY REFERENCES Products(Id),
	CategoryId INT FOREIGN KEY REFERENCES Categories(Id),
	PRIMARY KEY (ProductId, CategoryId)
);

INSERT INTO ProductCategories
VALUES
	(3, 2),
	(4, 2),
	(16, 2),
	(11, 1),
	(5, 1),
	(12, 5),
	(6, 5),
	(7, 5),
	(9, 4),
	(1, 4),
	(2, 4),
	(15, 3),
	(18, 3),
	(13, 3);


SELECT P."Name", C."Name"
FROM Products P
LEFT JOIN ProductCategories PC
	ON P.Id = PC.ProductId
LEFT JOIN Categories C
	ON PC.CategoryId = C.Id;