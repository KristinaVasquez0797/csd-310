-- Create Owners table
CREATE TABLE Owner (
    owner_id INT AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(75) NOT NULL, 
    relationship VARCHAR(75) NOT NULL, 
    inheritance_date DATE NOT NULL
);

INSERT INTO Owner (name, relationship, inheritance_date) VALUES
('George Bacchus', 'Father', '2000-01-01'), 
('Stan Bacchus', 'Son', '2021-01-01'),
('Davis Bacchus', 'Son', '2021-01-01');


-- Create Production table
CREATE TABLE Production (
    production_id INT AUTO_INCREMENT PRIMARY KEY,  
    employee_id INT NOT NULL,  
    wine_id INT NOT NULL,  
    quantity INT,  
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id), -- Reference to Employees table
    FOREIGN KEY (wine_id) REFERENCES Wines(wine_id) -- Reference to Wines table
);

INSERT INTO Production (employee_id, wine_id, quantity) VALUES
(1, 1, 100),  
(2, 2, 150),  
(3, 3, 200),  
(1, 4, 120),  
(2, 5, 180),  
(3, 6, 220);  

-- Create Wines table
CREATE TABLE Wines (
    wine_id INT AUTO_INCREMENT PRIMARY KEY,  
    name VARCHAR(75) NOT NULL,  
    type VARCHAR(75) NOT NULL,  
    grape_id INT NOT NULL,  
    FOREIGN KEY (grape_id) REFERENCES Grapes(grape_id) -- Reference to Grapes table
);

-- Populate Wines data
INSERT INTO Wines (name, type, grape_id) VALUES
('Opus One', 'Cabernet', 2), -- (Cabernet wine)
('Dom Perignon', 'Chardonnay', 4), -- (Chardonnay wine)
('Screaming Eagle', 'Merlot', 1), --  (Merlot wine)
('Cloudy Bay Sauvignon Blanc', 'Chablis', 3), --  (Chablis wine)
('Château Margaux', 'Cabernet', 2), -- (Cabernet wine)
('Domaine Leflaive Montrachet', 'Chardonnay', 4); --  (Chardonnay wine)