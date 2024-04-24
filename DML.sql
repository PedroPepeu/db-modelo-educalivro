DELETE FROM pay_method_financially_supports;
DELETE FROM student_subject;
DELETE FROM dormitory;
DELETE FROM responsible;
DELETE FROM student;
DELETE FROM trucks;
DELETE FROM department;

INSERT INTO student_subject VALUES
('1234', TRUE , 60, 120.00),
('1235', TRUE , 60, 120.00),
('1236', TRUE , 120, 120.00),
('1237', FALSE , 60, 120.00),
('1238', TRUE , 60, 120.00),
('1239', FALSE , 60, 120.00);

INSERT INTO dormitory VALUES
('Cruz Cabuga', 1 , 104, '10704'),
('Fatima Dives', 2 , 208, '10705'),
('Ascending Sand', 2 , 209, '10706'),
('Cactus Calung', 3 , 310, '10707'),
('Cactus Calung', 3 , 311, '10708');

INSERT INTO student VALUES
('Marone', 'Carvalho', '12332112377','12345', '2003-09-19', 'olhaso@gmail.com', 'm', 22, 'm', '11111111', 'apto 101', 1234, '2022-02-02' , 10704),
('Pedro', 'Pepeu', '22332112377','12346', '2003-10-20', 'olhala@gmail.com', 'm', 40, 'g', '22222222', 'apto 1702', 1235, '2022-02-02' , 10705),
('Iago', 'Apply', '32332112377','12347', '2003-11-21', 'olhaisso@gmail.com', 'm', 3, 'p', '33333333', 'apto 403', 1236, '2022-02-02' , 10706),
('Joao', 'Cjhonson', '44332112377','12348', '2003-12-22', 'olhaele@gmail.com', 'm', 13, 'pp', '44444444', 'apto 1201', 1237, '2022-02-02' , 10707),
('Ana', 'Clara', '55532112377','12349', '2003-01-23', 'olhaaquilo@gmail.com', 'f', 8, 'gg', '55555555', 'casa', 1238, '2022-02-02' , 10708);

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

INSERT INTO trucks VALUES
('OLA1D11', '112211', 300.00, 50, 1),
('BDA2D22', '223322', 350.00, 55, 2),
('EGG3D33', '334433', 400.00, 60, 3);

INSERT INTO department VALUES
('121314', 'Atendimento Online', 2, 1),
('222323', 'Controle de Cartoes Postais', 1, 2),
('323334', 'Manutencao Estrutural', 5, 3),
('414242', 'Controle de Veiculos', 3, 4);

UPDATE dormitory SET street_dormitory = 'Cactus Calung', floor_dormitory = 3, bedroom_number_dormitory = 308 WHERE idnum = '10705';

UPDATE dormitory SET street_dormitory = 'Cactus Calung', floor_dormitory = 3, bedroom_number_dormitory = 309  WHERE idnum = '10706';

UPDATE student SET email = 'olhadiferente@gmail.com' WHERE idnum = '12345';

UPDATE responsible SET email = 'oldZaunNewPiltover@gmail.com' WHERE cpf = '81882883888' ;

DELETE FROM trucks WHERE idnum = '223322'; 

DELETE FROM department WHERE idnum = '222323';

DELETE FROM student_subject WHERE idnum = '1239';

SELECT * FROM student;
SELECT * FROM dormitory;
SELECT * FROM student_subject;
SELECT * FROM responsible;
SELECT * FROM pay_method_financially_supports;
SELECT * FROM trucks;
SELECT * FROM department;