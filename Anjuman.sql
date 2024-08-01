create database college;
use college;
CREATE TABLE student_info (
    Student_id VARCHAR(10) PRIMARY KEY,        -- Unique student ID, e.g., "1UGAI"
    Student_F_name VARCHAR(50) NOT NULL,       -- First name
    Student_L_name VARCHAR(50) NOT NULL,       -- Last name
    Student_Username VARCHAR(15) NOT NULL,     -- Contact number, used as username
    Student_password VARCHAR(100) NOT NULL,    -- Password (hashed for security)
    Student_branch VARCHAR(20) NOT NULL,       -- Branch of study
    Student_email VARCHAR(100) NOT NULL,       -- Email address
    Student_year CHAR(1) NOT NULL              -- Current year, e.g., "1", "2", "3", "4"
);

select * from student_info;

CREATE TABLE Staff_detail (
    Employee_id INT PRIMARY KEY AUTO_INCREMENT, -- Unique identifier for each employee
    Employee_name VARCHAR(100) NOT NULL,        -- Employee's full name
    Education VARCHAR(100),                     -- Educational qualifications
    Working_branch VARCHAR(50) NOT NULL,        -- Department where the employee works
    year_of_experience INT                      -- Years of experience
);
INSERT INTO Staff_detail (Employee_name, Education, Working_branch, year_of_experience) VALUES
('Alice Johnson', 'Ph.D. in Artificial Intelligence', 'Artificial Intelligence and Data Science', 12),
('Bob Smith', 'M.Tech in Data Science', 'Artificial Intelligence and Data Science', 9),
('Carol Davis', 'M.Sc. in Computer Science', 'Artificial Intelligence and Data Science', 7),
('David Wilson', 'B.Tech in AI', 'Artificial Intelligence and Data Science', 5),
('Eve Brown', 'Ph.D. in Machine Learning', 'Artificial Intelligence and Data Science', 10),
('Frank White', 'B.Sc. in Data Science', 'Artificial Intelligence and Data Science', 3),
('Grace Lee', 'M.Tech in Artificial Intelligence', 'Artificial Intelligence and Data Science', 8),
('Hank Green', 'M.Sc. in Data Analytics', 'Artificial Intelligence and Data Science', 6),
('Ivy Patel', 'Ph.D. in Data Mining', 'Artificial Intelligence and Data Science', 11),
('Jack Black', 'M.Sc. in Statistics', 'Artificial Intelligence and Data Science', 4);

INSERT INTO Staff_detail (Employee_name, Education, Working_branch, year_of_experience) VALUES
('Karen Blue', 'Ph.D. in Computer Science', 'Computer Science and Engineering', 15),
('Liam Grey', 'M.Tech in Software Engineering', 'Computer Science and Engineering', 10),
('Megan Silver', 'B.Tech in Information Technology', 'Computer Science and Engineering', 6),
('Nora Gold', 'M.Sc. in Computer Networks', 'Computer Science and Engineering', 9),
('Oliver Brown', 'Ph.D. in Cyber Security', 'Computer Science and Engineering', 13),
('Peter Pink', 'B.Sc. in Software Development', 'Computer Science and Engineering', 4),
('Quinn Cyan', 'M.Tech in Computer Systems', 'Computer Science and Engineering', 8),
('Rita Purple', 'M.Sc. in Database Systems', 'Computer Science and Engineering', 5),
('Sam Red', 'Ph.D. in Computational Theory', 'Computer Science and Engineering', 12),
('Tina Orange', 'M.Tech in Embedded Systems', 'Computer Science and Engineering', 7);

INSERT INTO Staff_detail (Employee_name, Education, Working_branch, year_of_experience) VALUES
('Uma Violet', 'Ph.D. in Electrical Engineering', 'Electrical Engineering', 14),
('Vince Indigo', 'M.Tech in Power Systems', 'Electrical Engineering', 11),
('Wendy Peach', 'B.Tech in Circuit Design', 'Electrical Engineering', 6),
('Xander Magenta', 'M.Sc. in Signal Processing', 'Electrical Engineering', 8),
('Yara Coral', 'Ph.D. in Control Systems', 'Electrical Engineering', 13),
('Zach Copper', 'B.Sc. in Electronics', 'Electrical Engineering', 3),
('Alex Bronze', 'M.Tech in Microelectronics', 'Electrical Engineering', 9),
('Bella Gold', 'M.Sc. in Electromagnetics', 'Electrical Engineering', 5),
('Charlie Silver', 'Ph.D. in Nanotechnology', 'Electrical Engineering', 12),
('Diana Steel', 'M.Tech in Renewable Energy', 'Electrical Engineering', 7);

INSERT INTO Staff_detail (Employee_name, Education, Working_branch, year_of_experience) VALUES
('Eddie Zinc', 'Ph.D. in Telecommunications', 'Electronics and Telecommunication', 16),
('Fiona Tin', 'M.Tech in Signal Processing', 'Electronics and Telecommunication', 9),
('George Iron', 'B.Tech in Wireless Communication', 'Electronics and Telecommunication', 5),
('Hannah Brass', 'M.Sc. in Network Security', 'Electronics and Telecommunication', 7),
('Ian Lead', 'Ph.D. in Optical Networks', 'Electronics and Telecommunication', 14),
('Jen Nickel', 'B.Sc. in Embedded Systems', 'Electronics and Telecommunication', 4),
('Kyle Chrome', 'M.Tech in Microwave Engineering', 'Electronics and Telecommunication', 11),
('Laura Silver', 'M.Sc. in Antenna Design', 'Electronics and Telecommunication', 8),
('Mason Pewter', 'Ph.D. in Satellite Communication', 'Electronics and Telecommunication', 13),
('Nina Cobalt', 'M.Tech in RF Design', 'Electronics and Telecommunication', 6);

INSERT INTO Staff_detail (Employee_name, Education, Working_branch, year_of_experience) VALUES
('Oscar Brass', 'Ph.D. in Mechanical Engineering', 'Mechanical Engineering', 15),
('Paula Steel', 'M.Tech in Robotics', 'Mechanical Engineering', 10),
('Quincy Iron', 'B.Tech in Automotive Engineering', 'Mechanical Engineering', 7),
('Rebecca Bronze', 'M.Sc. in Thermodynamics', 'Mechanical Engineering', 9),
('Steve Silver', 'Ph.D. in Fluid Mechanics', 'Mechanical Engineering', 14),
('Tanya Copper', 'B.Sc. in Manufacturing', 'Mechanical Engineering', 4),
('Ursula Gold', 'M.Tech in CAD/CAM', 'Mechanical Engineering', 11),
('Victor Zinc', 'M.Sc. in Material Science', 'Mechanical Engineering', 6),
('Wanda Lead', 'Ph.D. in Composite Materials', 'Mechanical Engineering', 13),
('Xena Nickel', 'M.Tech in Aerodynamics', 'Mechanical Engineering', 8);

INSERT INTO Staff_detail (Employee_name, Education, Working_branch, year_of_experience) VALUES
('Yves Pewter', 'Ph.D. in Chemical Engineering', 'Chemical Engineering', 17),
('Zoe Platinum', 'M.Tech in Process Engineering', 'Chemical Engineering', 9),
('Alan Copper', 'B.Tech in Biochemical Engineering', 'Chemical Engineering', 5),
('Betty Silver', 'M.Sc. in Environmental Engineering', 'Chemical Engineering', 8),
('Charles Gold', 'Ph.D. in Petrochemical Engineering', 'Chemical Engineering', 15),
('Dora Brass', 'B.Sc. in Polymer Science', 'Chemical Engineering', 3),
('Ethan Tin', 'M.Tech in Reaction Engineering', 'Chemical Engineering', 12),
('Faye Bronze', 'M.Sc. in Industrial Chemistry', 'Chemical Engineering', 6),
('Gregory Lead', 'Ph.D. in Catalysis', 'Chemical Engineering', 14),
('Hilda Steel', 'M.Tech in Food Process Engineering', 'Chemical Engineering', 7);

INSERT INTO Staff_detail (Employee_name, Education, Working_branch, year_of_experience) VALUES
('Ivan Gold', 'Ph.D. in Machine Learning', 'Artificial Intelligence And ML', 16),
('Julia Brass', 'M.Tech in Deep Learning', 'Artificial Intelligence And ML', 9),
('Kevin Copper', 'B.Tech in Neural Networks', 'Artificial Intelligence And ML', 5),
('Linda Silver', 'M.Sc. in Data Science', 'Artificial Intelligence And ML', 8),
('Marcus Zinc', 'Ph.D. in Computer Vision', 'Artificial Intelligence And ML', 14),
('Nina Iron', 'B.Sc. in AI Systems', 'Artificial Intelligence And ML', 4),
('Oliver Lead', 'M.Tech in Natural Language Processing', 'Artificial Intelligence And ML', 10),
('Pamela Nickel', 'M.Sc. in Robotics', 'Artificial Intelligence And ML', 7),
('Quentin Cobalt', 'Ph.D. in Reinforcement Learning', 'Artificial Intelligence And ML', 13),
('Rita Chrome', 'M.Tech in Computational Intelligence', 'Artificial Intelligence And ML', 6);

select * from staff_detail;

CREATE TABLE library (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    book_name VARCHAR(255) NOT NULL,
    author_name VARCHAR(255) NOT NULL,
    branch VARCHAR(255) NOT NULL,
    books_available INT NOT NULL
);

-- Artificial Intelligence and Data Science
INSERT INTO library (book_name, author_name, branch, books_available) VALUES
('Artificial Intelligence: A Modern Approach', 'Stuart Russell, Peter Norvig', 'Artificial Intelligence and Data Science', 10),
('Data Science for Business', 'Foster Provost, Tom Fawcett', 'Artificial Intelligence and Data Science', 8),
('Hands-On Machine Learning with Scikit-Learn and TensorFlow', 'Aurélien Géron', 'Artificial Intelligence and Data Science', 12),
('Python Machine Learning', 'Sebastian Raschka, Vahid Mirjalili', 'Artificial Intelligence and Data Science', 5),
('Deep Learning', 'Ian Goodfellow, Yoshua Bengio, Aaron Courville', 'Artificial Intelligence and Data Science', 6),
('Pattern Recognition and Machine Learning', 'Christopher M. Bishop', 'Artificial Intelligence and Data Science', 9),
('Machine Learning: A Probabilistic Perspective', 'Kevin P. Murphy', 'Artificial Intelligence and Data Science', 7),
('Data Mining: Concepts and Techniques', 'Jiawei Han, Micheline Kamber', 'Artificial Intelligence and Data Science', 4),
('Introduction to Data Mining', 'Pang-Ning Tan, Michael Steinbach', 'Artificial Intelligence and Data Science', 10),
('Probabilistic Graphical Models', 'Daphne Koller, Nir Friedman', 'Artificial Intelligence and Data Science', 3);

-- Computer Science and Engineering
INSERT INTO library (book_name, author_name, branch, books_available) VALUES
('Introduction to Algorithms', 'Thomas H. Cormen, Charles E. Leiserson', 'Computer Science and Engineering', 15),
('Computer Networking: A Top-Down Approach', 'James F. Kurose, Keith W. Ross', 'Computer Science and Engineering', 10),
('Operating System Concepts', 'Abraham Silberschatz, Peter B. Galvin', 'Computer Science and Engineering', 8),
('Database System Concepts', 'Abraham Silberschatz, Henry Korth', 'Computer Science and Engineering', 9),
('The Art of Computer Programming', 'Donald E. Knuth', 'Computer Science and Engineering', 5),
('Design Patterns: Elements of Reusable Object-Oriented Software', 'Erich Gamma, Richard Helm', 'Computer Science and Engineering', 7),
('Computer Architecture: A Quantitative Approach', 'John L. Hennessy, David A. Patterson', 'Computer Science and Engineering', 6),
('Clean Code: A Handbook of Agile Software Craftsmanship', 'Robert C. Martin', 'Computer Science and Engineering', 11),
('Artificial Intelligence for Humans', 'Jeff Heaton', 'Computer Science and Engineering', 6),
('The Pragmatic Programmer', 'Andrew Hunt, David Thomas', 'Computer Science and Engineering', 4);

-- Electrical Engineering
INSERT INTO library (book_name, author_name, branch, books_available) VALUES
('Modern Control Engineering', 'Ogata', 'Electrical Engineering', 7),
('Electric Machinery Fundamentals', 'Stephen J. Chapman', 'Electrical Engineering', 10),
('Power System Analysis and Design', 'J. Duncan Glover, Mulukutla S. Sarma', 'Electrical Engineering', 9),
('Electrical Engineering: Principles & Applications', 'Allan R. Hambley', 'Electrical Engineering', 12),
('Fundamentals of Electric Circuits', 'Charles Alexander, Matthew Sadiku', 'Electrical Engineering', 5),
('Digital Signal Processing', 'Alan V. Oppenheim, Ronald W. Schafer', 'Electrical Engineering', 8),
('Electromagnetic Field Theory Fundamentals', 'Guru, Hüseyin', 'Electrical Engineering', 6),
('Microelectronic Circuits', 'Adel S. Sedra, Kenneth C. Smith', 'Electrical Engineering', 7),
('Electric Circuits', 'James W. Nilsson, Susan Riedel', 'Electrical Engineering', 11),
('Principles of Electric Machines and Power Electronics', 'P.C. Sen', 'Electrical Engineering', 3);

-- Electronics and Telecommunication
INSERT INTO library (book_name, author_name, branch, books_available) VALUES
('Digital Signal Processing: Principles, Algorithms, and Applications', 'John G. Proakis, Dimitris G. Manolakis', 'Electronics and Telecommunication', 5),
('Communication Systems', 'Simon Haykin', 'Electronics and Telecommunication', 9),
('Signals and Systems', 'Alan V. Oppenheim, Alan S. Willsky', 'Electronics and Telecommunication', 6),
('Principles of Communication Systems', 'Herbert Taub, Donald L. Schilling', 'Electronics and Telecommunication', 8),
('Wireless Communications: Principles and Practice', 'Theodore S. Rappaport', 'Electronics and Telecommunication', 4),
('Telecommunication Switching Systems and Networks', 'Thiagarajan Viswanathan', 'Electronics and Telecommunication', 3),
('Satellite Communications', 'Dennis Roddy', 'Electronics and Telecommunication', 7),
('Analog and Digital Communication Systems', 'Martin S. Roden', 'Electronics and Telecommunication', 11),
('Microwave Engineering', 'David M. Pozar', 'Electronics and Telecommunication', 10),
('Modern Digital and Analog Communication Systems', 'B.P. Lathi, Zhi Ding', 'Electronics and Telecommunication', 2);

-- Mechanical Engineering
INSERT INTO library (book_name, author_name, branch, books_available) VALUES
('Fluid Mechanics', 'Frank M. White', 'Mechanical Engineering', 12),
('Thermodynamics: An Engineering Approach', 'Yunus Çengel, Michael Boles', 'Mechanical Engineering', 15),
('Mechanics of Materials', 'James M. Gere, Barry J. Goodno', 'Mechanical Engineering', 10),
('Engineering Mechanics: Dynamics', 'J.L. Meriam, L.G. Kraige', 'Mechanical Engineering', 8),
('Heat Transfer', 'J.P. Holman', 'Mechanical Engineering', 11),
('Engineering Fluid Mechanics', 'Clayton T. Crowe, Donald F. Elger', 'Mechanical Engineering', 9),
('Introduction to Robotics: Mechanics and Control', 'John J. Craig', 'Mechanical Engineering', 7),
('Machine Design: An Integrated Approach', 'Robert L. Norton', 'Mechanical Engineering', 5),
('Kinematics and Dynamics of Machinery', 'Charles E. Wilson, J. Peter Sadler', 'Mechanical Engineering', 6),
('Mechanical Vibrations', 'S.S. Rao', 'Mechanical Engineering', 3);

-- Chemical Engineering
INSERT INTO library (book_name, author_name, branch, books_available) VALUES
('Principles of Chemical Engineering', 'Himmelblau', 'Chemical Engineering', 9),
('Chemical Engineering Thermodynamics', 'Smith, Van Ness, Abbott', 'Chemical Engineering', 7),
('Transport Processes and Separation Process Principles', 'Christie John Geankoplis', 'Chemical Engineering', 8),
('Introduction to Chemical Engineering Kinetics and Reactor Design', 'Charles G. Hill', 'Chemical Engineering', 10),
('Elements of Chemical Reaction Engineering', 'H. Scott Fogler', 'Chemical Engineering', 12),
('Chemical Process Safety: Fundamentals with Applications', 'Daniel A. Crowl, Joseph F. Louvar', 'Chemical Engineering', 6),
('Biochemical Engineering Fundamentals', 'James E. Bailey, David F. Ollis', 'Chemical Engineering', 11),
('Perry\'s Chemical Engineers\' Handbook', 'Don W. Green, Robert H. Perry', 'Chemical Engineering', 5),
('Chemical Process Control: An Introduction to Theory and Practice', 'George Stephanopoulos', 'Chemical Engineering', 4),
('Separation Process Engineering: Includes Mass Transfer Analysis', 'Phillip C. Wankat', 'Chemical Engineering', 2);

-- Artificial Intelligence And ML
INSERT INTO library (book_name, author_name, branch, books_available) VALUES
('Machine Learning: A Probabilistic Perspective', 'Kevin P. Murphy', 'Artificial Intelligence And ML', 6),
('Deep Learning', 'Ian Goodfellow, Yoshua Bengio, Aaron Courville', 'Artificial Intelligence And ML', 10),
('Pattern Recognition and Machine Learning', 'Christopher M. Bishop', 'Artificial Intelligence And ML', 8),
('Hands-On Machine Learning with Scikit-Learn and TensorFlow', 'Aurélien Géron', 'Artificial Intelligence And ML', 5),
('Python Machine Learning', 'Sebastian Raschka, Vahid Mirjalili', 'Artificial Intelligence And ML', 7),
('Deep Learning for Computer Vision', 'Rajalingappaa Shanmugamani', 'Artificial Intelligence And ML', 9),
('Neural Networks and Deep Learning: A Textbook', 'Charu C. Aggarwal', 'Artificial Intelligence And ML', 12),
('Bayesian Reasoning and Machine Learning', 'David Barber', 'Artificial Intelligence And ML', 11),
('Artificial Intelligence: Foundations of Computational Agents', 'David L. Poole, Alan K. Mackworth', 'Artificial Intelligence And ML', 4),
('Learning from Data', 'Yaser S. Abu-Mostafa, Malik Magdon-Ismail', 'Artificial Intelligence And ML', 6);

-- Additional Entries
INSERT INTO library (book_name, author_name, branch, books_available) VALUES
('The Intelligent Investor', 'Benjamin Graham', 'Finance', 10),
('Finance for Non-Financial Managers', 'Gene Siciliano', 'Finance', 8),
('The Lean Startup', 'Eric Ries', 'Business Management', 12),
('The Art of War', 'Sun Tzu', 'Strategy', 5),
('The Innovator\'s Dilemma', 'Clayton M. Christensen', 'Business Management', 6),
('Thinking, Fast and Slow', 'Daniel Kahneman', 'Psychology', 7),
('Predictably Irrational', 'Dan Ariely', 'Psychology', 9),
('Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 'History', 4),
('Educated', 'Tara Westover', 'Biography', 10),
('The Alchemist', 'Paulo Coelho', 'Fiction', 3),
('1984', 'George Orwell', 'Fiction', 15),
('To Kill a Mockingbird', 'Harper Lee', 'Fiction', 8),
('The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 7),
('Brave New World', 'Aldous Huxley', 'Fiction', 11),
('The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 5),
('Pride and Prejudice', 'Jane Austen', 'Fiction', 6),
('Wuthering Heights', 'Emily Brontë', 'Fiction', 9),
('The Lord of the Rings', 'J.R.R. Tolkien', 'Fiction', 10),
('Harry Potter and the Philosopher\'s Stone', 'J.K. Rowling', 'Fiction', 12),
('The Hobbit', 'J.R.R. Tolkien', 'Fiction', 8),
('A Game of Thrones', 'George R.R. Martin', 'Fiction', 5),
('The Hunger Games', 'Suzanne Collins', 'Fiction', 11),
('The Road', 'Cormac McCarthy', 'Fiction', 4),
('Life of Pi', 'Yann Martel', 'Fiction', 6),
('The Fault in Our Stars', 'John Green', 'Fiction', 3),
('The Chronicles of Narnia', 'C.S. Lewis', 'Fiction', 7),
('Catch-22', 'Joseph Heller', 'Fiction', 5),
('The Diary of a Young Girl', 'Anne Frank', 'Biography', 9),
('Steve Jobs', 'Walter Isaacson', 'Biography', 10),
('Becoming', 'Michelle Obama', 'Biography', 8),
('The Wright Brothers', 'David McCullough', 'Biography', 6),
('The Immortal Life of Henrietta Lacks', 'Rebecca Skloot', 'Biography', 4),
('The Girl with the Dragon Tattoo', 'Stieg Larsson', 'Fiction', 7),
('The Da Vinci Code', 'Dan Brown', 'Fiction', 10),
('The Girl on the Train', 'Paula Hawkins', 'Fiction', 8),
('Gone Girl', 'Gillian Flynn', 'Fiction', 11),
('The Maze Runner', 'James Dashner', 'Fiction', 5),
('Divergent', 'Veronica Roth', 'Fiction', 6),
('The Handmaid\'s Tale', 'Margaret Atwood', 'Fiction', 9),
('Slaughterhouse-Five', 'Kurt Vonnegut', 'Fiction', 7),
('The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 3),
('Fahrenheit 451', 'Ray Bradbury', 'Fiction', 4),
('Animal Farm', 'George Orwell', 'Fiction', 5),
('The Picture of Dorian Gray', 'Oscar Wilde', 'Fiction', 6),
('Dracula', 'Bram Stoker', 'Fiction', 7),
('Frankenstein', 'Mary Shelley', 'Fiction', 8),
('The Metamorphosis', 'Franz Kafka', 'Fiction', 9),
('One Hundred Years of Solitude', 'Gabriel García Márquez', 'Fiction', 10),
('Crime and Punishment', 'Fyodor Dostoevsky', 'Fiction', 11),
('War and Peace', 'Leo Tolstoy', 'Fiction', 12),
('Anna Karenina', 'Leo Tolstoy', 'Fiction', 13),
('The Brothers Karamazov', 'Fyodor Dostoevsky', 'Fiction', 14),
('The Iliad', 'Homer', 'Fiction', 15),
('The Odyssey', 'Homer', 'Fiction', 16),
('Moby-Dick', 'Herman Melville', 'Fiction', 17),
('The Divine Comedy', 'Dante Alighieri', 'Fiction', 18),
('The Canterbury Tales', 'Geoffrey Chaucer', 'Fiction', 19),
('The Prince', 'Niccolò Machiavelli', 'Non-Fiction', 5),
('The Republic', 'Plato', 'Non-Fiction', 4),
('Meditations', 'Marcus Aurelius', 'Non-Fiction', 6),
('The Art of War', 'Sun Tzu', 'Non-Fiction', 7),
('The Wealth of Nations', 'Adam Smith', 'Non-Fiction', 8),
('The Communist Manifesto', 'Karl Marx, Friedrich Engels', 'Non-Fiction', 9),
('The Interpretation of Dreams', 'Sigmund Freud', 'Non-Fiction', 10),
('On the Origin of Species', 'Charles Darwin', 'Non-Fiction', 11),
('The Elements of Style', 'William Strunk Jr., E.B. White', 'Non-Fiction', 12),
('The Art of Public Speaking', 'Dale Carnegie', 'Non-Fiction', 13);

select * from library;

CREATE TABLE Syllabus (
    branch_name VARCHAR(100),
    semester INT,
    syllabus_details TEXT
);
-- First Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Electrical Engineering', 1, 'Engineering Mathematics I\nBasic Electrical Engineering\nPhysics\nChemistry\nProgramming in C');

-- Second Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Electrical Engineering', 2, 'Engineering Mathematics II\nCircuit Analysis\nElectronic Devices\nThermodynamics\nLinear Algebra');

-- Third Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Electrical Engineering', 3, 'Signal Processing\nElectric Machines\nElectromagnetic Theory\nAnalog Electronics\nDigital Logic Design');

-- Fourth Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Electrical Engineering', 4, 'Microprocessors\nPower Systems\nControl Systems\nCommunication Systems\nDiscrete Mathematics');

-- Fifth Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Electrical Engineering', 5, 'Power Electronics\nElectrical Machines II\nSignals and Systems\nAdvanced Mathematics\nDatabase Management');

-- Sixth Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Electrical Engineering', 6, 'Industrial Automation\nElectric Drives\nInstrumentation\nRenewable Energy\nWireless Communications');

-- Seventh Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Electrical Engineering', 7, 'High Voltage Engineering\nPower System Protection\nElective I\nElective II\nEngineering Economics');

-- Eighth Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Electrical Engineering', 8, 'Smart Grid Technology\nAdvanced Control Systems\nElective III\nElective IV\nCapstone Project');
-- First Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Mechanical Engineering', 1, 'Engineering Mathematics I\nEngineering Mechanics\nPhysics\nChemistry\nEngineering Drawing');

-- Second Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Mechanical Engineering', 2, 'Engineering Mathematics II\nThermodynamics\nMaterial Science\nMechanics of Materials\nWorkshop Technology');

-- Third Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Mechanical Engineering', 3, 'Fluid Mechanics\nMachine Design\nDynamics of Machinery\nManufacturing Processes\nElectrical Machines');

-- Fourth Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Mechanical Engineering', 4, 'Heat Transfer\nVibrations\nEngineering Materials\nNumerical Methods\nControl Systems');

-- Fifth Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Mechanical Engineering', 5, 'Fluid Dynamics\nAdvanced Manufacturing\nAutomobile Engineering\nFinite Element Analysis\nProduction Planning');

-- Sixth Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Mechanical Engineering', 6, 'Mechanical Vibrations\nCAD/CAM\nRefrigeration & Air Conditioning\nHydraulic Machines\nOperations Research');

-- Seventh Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Mechanical Engineering', 7, 'Robotics\nEnergy Systems\nElective I\nElective II\nIndustrial Management');

-- Eighth Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Mechanical Engineering', 8, 'Advanced Fluid Mechanics\nRenewable Energy Systems\nElective III\nElective IV\nCapstone Project');

-- First Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Artificial Intelligence and Data Science', 1, 'Introduction to Programming\nLinear Algebra\nCalculus\nIntroduction to AI\nDigital Logic');

-- Second Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Artificial Intelligence and Data Science', 2, 'Data Structures\nProbability and Statistics\nObject-Oriented Programming\nAI Basics\nDiscrete Mathematics');

-- Third Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Artificial Intelligence and Data Science', 3, 'Machine Learning\nData Mining\nAlgorithms\nDatabase Systems\nOperating Systems');

-- Fourth Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Artificial Intelligence and Data Science', 4, 'Deep Learning\nNatural Language Processing\nComputer Vision\nSoftware Engineering\nWeb Technologies');

-- Fifth Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Artificial Intelligence and Data Science', 5, 'Big Data Analytics\nReinforcement Learning\nNeural Networks\nInternet of Things\nAdvanced AI');

-- Sixth Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Artificial Intelligence and Data Science', 6, 'Data Visualization\nAI Ethics\nCloud Computing\nCyber Security\nRobotics');

-- Seventh Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Artificial Intelligence and Data Science', 7, 'AI for Business\nAI in Healthcare\nElective I\nElective II\nProject Management');

-- Eighth Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Artificial Intelligence and Data Science', 8, 'AI Research\nAI in Fintech\nElective III\nElective IV\nCapstone Project');

-- First Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Computer Science and Engineering', 1, 'Introduction to Computing\nCalculus\nPhysics\nChemistry\nBasic Electrical Engineering');

-- Second Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Computer Science and Engineering', 2, 'Data Structures\nDiscrete Mathematics\nObject-Oriented Programming\nDigital Electronics\nProbability and Statistics');

-- Third Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Computer Science and Engineering', 3, 'Algorithms\nOperating Systems\nComputer Networks\nDatabase Systems\nSoftware Engineering');

-- Fourth Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Computer Science and Engineering', 4, 'Theory of Computation\nArtificial Intelligence\nMachine Learning\nWeb Technologies\nMobile Application Development');

-- Fifth Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Computer Science and Engineering', 5, 'Distributed Systems\nCloud Computing\nBig Data Analytics\nInternet of Things\nCryptography');

-- Sixth Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Computer Science and Engineering', 6, 'Computer Graphics\nHuman-Computer Interaction\nAdvanced Database Systems\nCyber Security\nSoftware Testing');

-- Seventh Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Computer Science and Engineering', 7, 'Blockchain Technology\nData Science\nElective I\nElective II\nProject Management');

-- Eighth Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Computer Science and Engineering', 8, 'Quantum Computing\nAdvanced Algorithms\nElective III\nElective IV\nCapstone Project');

-- First Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Electronics and Telecommunication', 1, 'Engineering Mathematics I\nBasic Electronics\nPhysics\nChemistry\nProgramming in C');

-- Second Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Electronics and Telecommunication', 2, 'Engineering Mathematics II\nAnalog Electronics\nDigital Electronics\nNetwork Theory\nSignals and Systems');

-- Third Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Electronics and Telecommunication', 3, 'Microprocessors\nElectromagnetic Fields\nControl Systems\nCommunication Systems\nVLSI Design');

-- Fourth Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Electronics and Telecommunication', 4, 'Digital Signal Processing\nEmbedded Systems\nOptical Communication\nAntenna Theory\nWireless Communication');

-- Fifth Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Electronics and Telecommunication', 5, 'Telecommunication Networks\nRadar Systems\nElectromagnetic Interference\nSatellite Communication\nInformation Theory');

-- Sixth Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Electronics and Telecommunication', 6, 'Digital Image Processing\nRF Circuits\nNetwork Security\nMobile Communication\nIoT Applications');

-- Seventh Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Electronics and Telecommunication', 7, 'Wireless Sensor Networks\nAdvanced VLSI Design\nElective I\nElective II\nProject Management');

-- Eighth Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Electronics and Telecommunication', 8, 'Microwave Engineering\nNext-Gen Wireless Systems\nElective III\nElective IV\nCapstone Project');

-- First Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Artificial Intelligence And ML', 1, 'Introduction to Programming\nMathematics for AI\nStatistics\nDigital Logic\nComputer Science Basics');

-- Second Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Artificial Intelligence And ML', 2, 'Data Structures\nMachine Learning Basics\nPython Programming\nLinear Algebra\nProbability');

-- Third Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Artificial Intelligence And ML', 3, 'Deep Learning\nNatural Language Processing\nComputer Vision\nDatabase Systems\nAlgorithms');

-- Fourth Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Artificial Intelligence And ML', 4, 'AI for Robotics\nReinforcement Learning\nNeural Networks\nSoftware Engineering\nBig Data Analytics');

-- Fifth Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Artificial Intelligence And ML', 5, 'Advanced AI Techniques\nHuman-AI Interaction\nData Mining\nCloud Computing\nCyber Security');

-- Sixth Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Artificial Intelligence And ML', 6, 'AI in Healthcare\nAI for Social Good\nInternet of Things\nBlockchain Technology\nEthics in AI');

-- Seventh Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Artificial Intelligence And ML', 7, 'AI for Business\nAI in Education\nElective I\nElective II\nProject Management');

-- Eighth Semester Syllabus
INSERT INTO Syllabus (branch_name, semester, syllabus_details) VALUES 
('Artificial Intelligence And ML', 8, 'Research in AI\nFintech AI\nElective III\nElective IV\nCapstone Project');

select * from Syllabus;