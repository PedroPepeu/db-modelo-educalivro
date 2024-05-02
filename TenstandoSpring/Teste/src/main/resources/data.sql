INSERT INTO student_subject VALUES
('1234', TRUE , 60, 120.00),
('1235', TRUE , 60, 120.00),
('1236', TRUE , 120, 120.00),
('1237', FALSE , 60, 120.00),
('1238', TRUE , 60, 120.00),
('1239', FALSE , 60, 120.00);

INSERT INTO dormitory VALUES
('Cruz Cabuga', 1 , 704, 10704),
('Fatima Dives', 2 , 208, 10705),
('Ascending Sand', 3 , 109, 10706),
('Cactus Calung', 4 , 310, 10707),
('Cactus Calung', 4 , 311, 10708);

INSERT INTO student VALUES
('Marone', 'Carvalho', '12332112377','12345', '2003-09-19', 'olhaso@gmail.com', 'm', 22, 'm', '11111111', 'apto 101', 1234, '2022-02-02' , 10704),
('Pedro', 'Pepeu', '22332112377','12346', '2003-10-20', 'olhala@gmail.com', 'm', 40, 'g', '22222222', 'apto 102', 1235, '2022-02-02' , 10705),
('Iago', 'Apply', '32332112377','12347', '2003-11-21', 'olhaisso@gmail.com', 'm', 3, 'p', '33333333', 'apto 103', 1236, '2022-02-02' , 10706),
('Joao', 'Cjhonson', '44332112377','12348', '2003-12-22', 'olhaele@gmail.com', 'm', 13, 'pp', '44444444', 'apto 104', 1237, '2022-02-02' , 10707),
('Ana', 'Clara', '55532112377','12349', '2003-01-23', 'olhaaquilo@gmail.com', 'f', 8, 'gg', '55555555', 'apto 105', 1238, '2022-02-02' , 10708);

INSERT INTO responsible VALUES
('Darius', 'noxus@gmail.com', '51552553555'),
('Vicktor', 'piltover@gmail.com', '81882883888'),
('Zeri', 'zaun@gmail.com', '71772773777'),
('Gangplank', 'aguasdesentina@gmail.com', '41442443444'),
('Ramus', 'ok@gmail.com', '91992993999');

INSERT INTO pay_method_financially_supports VALUES
('12121','51552553555', '12345'),
('13131','81882883888', '12346'),
('14141','71772773777', '12347'),
('15151','41442443444', '12348'),
('16161','91992993999', '12349');

/* INSERT INTO LIBRARY_BOOKS (idNum, book_edition, book_gender, book_synopsis, book_quantity, FK_DEPARTMENT_idNum, FK_CLUBS_WORKER_idNum, dt_borrow_start) 
VALUES 
('1', 1, 'Fiction', 'A thrilling adventure novel', 10, '1001', '2001', '2024-05-01'), */

/* INSERT INTO ONLINE_ACCOUNT (idNum, account_name, account_email, account_cpf, account_adrss, FK_STUDENT_idNum, FK_LIBRARY_BOOKS_idNum) 
VALUES 
('1','John Doe', 'john@example.com', '12345678901', '123 Main St', '12345', '1'), */


