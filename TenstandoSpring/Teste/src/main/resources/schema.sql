/* trab2_educalivros_logic: */

DROP TABLE IF EXISTS STUDENT, STUDENT_SUBJECT, RESPONSIBLE, 
PAY_METHOD_FINANCIALLY_SUPPORTS, 
 CARD, DORMITORY, DEPARTMENT, TRUCKS, CLASS, 
 ONLINE_ACCOUNT, THE_BUY_ITENS, LIBRARY_BOOKS, 
 AUTOR, CLUBS_WORKER, EVENTS, THROPHIES, 
 NECESSARY_FOR, STUDIES_FOR, PAY_BY, TEACH, 
 CONTROL, TEACHED_IN, SOLD, ACCOUNT_PAY_BY, 
 WRITEN_BY, BORROW, REALIZES, PARTICIPATE;


CREATE TABLE STUDENT (
    student_first_name VARCHAR(30),
    student_second_name VARCHAR(30),
    cpf VARCHAR(30),
    idNum VARCHAR(30) PRIMARY KEY,
    dt_birth DATE,
    email VARCHAR(30),
    sex CHAR,
    total_worload FLOAT,
    cloth_size VARCHAR(2),
    zip_code VARCHAR(30),
    complement VARCHAR(30),
    FK_STUDENT_SUBJECT_idNum VARCHAR(30),
    dt_start DATE,
    FK_DORMITORY_idNum VARCHAR(30)
);

CREATE TABLE STUDENT_SUBJECT (
    idNum VARCHAR(30) PRIMARY KEY,
    obligatoriness BOOLEAN,
    total_hour_credit INT,
    subject_value FLOAT
);

CREATE TABLE RESPONSIBLE (
    responsible_name VARCHAR(30),
    email VARCHAR(30),
    cpf VARCHAR(30) PRIMARY KEY
);

CREATE TABLE PAY_METHOD_FINANCIALLY_SUPPORTS (
    crypto_wallet_number VARCHAR(30),
    FK_RESPONSIBLE_cpf VARCHAR(30),
    FK_STUDENT_idNum VARCHAR(30)
);

CREATE TABLE CARD (
    credit_card BOOLEAN,
    debit_card BOOLEAN,
    dt_validity DATE,
    cvc VARCHAR(3),
    number_card VARCHAR(30),
    name_card VARCHAR(30)
);

CREATE TABLE DORMITORY (
    street_dormitory VARCHAR(30),
    floor_dormitory INT,
    bedroom_number_dormitory INT,
    idNum VARCHAR(30) PRIMARY KEY
);

CREATE TABLE DEPARTMENT (
    idNum VARCHAR(30) PRIMARY KEY,
    department_name VARCHAR(30),
    workers_number INT,
    DEPARTMENT_TIPO INT
);

CREATE TABLE TRUCKS (
    auto_plate VARCHAR(7),
    idNum VARCHAR(30) PRIMARY KEY,
    truck_weigth_capacity FLOAT,
    bus_people_capacity INT,
    TRUCKS_TIPO INT
);

CREATE TABLE CLASS (
    idNum VARCHAR(30) PRIMARY KEY,
    floor_class INT,
    class_number INT,
    max_number_students INT
);

CREATE TABLE ONLINE_ACCOUNT (
    account_name VARCHAR(30),
    account_email VARCHAR(30),
    account_cpf VARCHAR(30),
    account_adrss VARCHAR(30),
    idNum VARCHAR(30) PRIMARY KEY
);

CREATE TABLE THE_BUY_ITENS (
    FK_TRUCKS_idNum VARCHAR(30),
    freight FLOAT,
    transport_code VARCHAR(30),
    dt_departure DATE,
    arrival_locale VARCHAR(30),
    idNum VARCHAR(30) PRIMARY KEY,
    item_name VARCHAR(30),
    item_price FLOAT,
    item_quantity INT,
    item_sold_quantity INT,
    title VARCHAR(30),
    edition INT,
    gender VARCHAR(30),
    synopsis VARCHAR(30),
    ITENS_TIPO INT,
    FK_ONLINE_ACCOUNT_idNum VARCHAR(30)
);

CREATE TABLE LIBRARY_BOOKS (
    idNum VARCHAR(30) PRIMARY KEY,
    book_edition INT,
    book_gender VARCHAR(30),
    book_synopsis VARCHAR(30),
    book_quantity INT,
    FK_DEPARTMENT_idNum VARCHAR(30),
    FK_CLUBS_WORKER_idNum VARCHAR(30),
    dt_borrow_start DATE
);

CREATE TABLE AUTOR (
    autor_name VARCHAR(30) PRIMARY KEY,
    autor_age INT,
    autor_sex CHAR
);

CREATE TABLE CLUBS_WORKER (
    club_name VARCHAR(30),
    idNum VARCHAR(30) PRIMARY KEY,
    monthly_price FLOAT,
    income FLOAT,
    activity_dt_start DATE,
    research_subject VARCHAR(30),
    research_dt_start DATE,
    research_dt_end DATE,
    research_quotes_quantities INT,
    research_papers_quantities INT,
    CLUBS_TIPO INT,
    cpf VARCHAR(30),
    worker_name VARCHAR(30),
    adrss VARCHAR(30),
    dt_birth DATE,
    phone VARCHAR(30),
    bonus FLOAT,
    regular_salary FLOAT,
    salary FLOAT,
    WORKER_TIPO INT,
    FK_WORKER_idNum VARCHAR(30),
    FK_DEPARTMENT_idNum VARCHAR(30)
);

CREATE TABLE EVENTS (
    event_name VARCHAR(30) PRIMARY KEY,
    event_income FLOAT,
    event_price FLOAT,
    event_impact FLOAT
);

CREATE TABLE THROPHIES (
    throphie_name FLOAT,
    throphie_dt DATE,
    throphie_position INT,
    FK_CLUBS_WORKER_idNum VARCHAR(30)
);

CREATE TABLE NECESSARY_FOR (
    FK_STUDENT_SUBJECT_idNum VARCHAR(30),
    FK_STUDENT_SUBJECT_idNum_ VARCHAR(30)
);

CREATE TABLE STUDIES_FOR (
    FK_STUDENT_SUBJECT_idNum VARCHAR(30),
    FK_STUDENT_idNum VARCHAR(30),
    fouls INT,
    gradeAv1 FLOAT,
    gradeAv2 FLOAT
);

CREATE TABLE PAY_BY (
);

CREATE TABLE TEACH (
    FK_WORKER_idNum VARCHAR(30),
    FK_STUDENT_SUBJECT_idNum VARCHAR(30)
);

CREATE TABLE CONTROL (
    FK_DEPARTMENT_idNum VARCHAR(30),
    FK_TRUCKS_idNum VARCHAR(30)
);

CREATE TABLE TEACHED_IN (
    FK_CLASS_idNum VARCHAR(30),
    FK_STUDENT_SUBJECT_idNum VARCHAR(30),
    hr_class TIME
);

CREATE TABLE SOLD (
    FK_DEPARTMENT_idNum VARCHAR(30),
    FK_ITENS_idNum VARCHAR(30)
);

CREATE TABLE ACCOUNT_PAY_BY (
    FK_ONLINE_ACCOUNT_idNum VARCHAR(30)
);

CREATE TABLE WRITEN_BY (
    FK_AUTOR_autor_name VARCHAR(30),
    FK_LIBRARY_BOOKS_idNum VARCHAR(30)
);

CREATE TABLE BORROW (
    FK_STUDENT_idNum VARCHAR(30),
    FK_LIBRARY_BOOKS_idNum VARCHAR(30),
    dt_borrow_start DATE,
    dt_borrow_limit DATE,
    price_borrow_outlimit FLOAT
);

CREATE TABLE REALIZES (
    FK_CLUBS_WORKER_idNum VARCHAR(30),
    FK_EVENTS_event_name VARCHAR(30)
);

CREATE TABLE PARTICIPATE (
    FK_STUDENT_idNum VARCHAR(30),
    FK_CLUBS_WORKER_idNum VARCHAR(30)
);
 
ALTER TABLE STUDENT ADD CONSTRAINT FK_STUDENT_2
    FOREIGN KEY (FK_STUDENT_SUBJECT_idNum)
    REFERENCES STUDENT_SUBJECT (idNum)
    ON DELETE CASCADE;
 
ALTER TABLE STUDENT ADD CONSTRAINT FK_STUDENT_3
    FOREIGN KEY (FK_DORMITORY_idNum)
    REFERENCES DORMITORY (idNum)
    ON DELETE CASCADE;
 
ALTER TABLE PAY_METHOD_FINANCIALLY_SUPPORTS ADD CONSTRAINT FK_PAY_METHOD_FINANCIALLY_SUPPORTS_1
    FOREIGN KEY (FK_RESPONSIBLE_cpf)
    REFERENCES RESPONSIBLE (cpf);
 
ALTER TABLE PAY_METHOD_FINANCIALLY_SUPPORTS ADD CONSTRAINT FK_PAY_METHOD_FINANCIALLY_SUPPORTS_2
    FOREIGN KEY (FK_STUDENT_idNum)
    REFERENCES STUDENT (idNum);
 
ALTER TABLE THE_BUY_ITENS ADD CONSTRAINT FK_THE_BUY_ITENS_2
    FOREIGN KEY (FK_TRUCKS_idNum)
    REFERENCES TRUCKS (idNum)
    ON DELETE RESTRICT;
 
ALTER TABLE THE_BUY_ITENS ADD CONSTRAINT FK_THE_BUY_ITENS_3
    FOREIGN KEY (FK_ONLINE_ACCOUNT_idNum)
    REFERENCES ONLINE_ACCOUNT (idNum);
 
ALTER TABLE LIBRARY_BOOKS ADD CONSTRAINT FK_LIBRARY_BOOKS_2
    FOREIGN KEY (FK_DEPARTMENT_idNum)
    REFERENCES DEPARTMENT (idNum)
    ON DELETE RESTRICT;
 
ALTER TABLE LIBRARY_BOOKS ADD CONSTRAINT FK_LIBRARY_BOOKS_3
    FOREIGN KEY (FK_CLUBS_WORKER_idNum)
    REFERENCES CLUBS_WORKER (idNum)
    ON DELETE RESTRICT;
 
ALTER TABLE CLUBS_WORKER ADD CONSTRAINT FK_CLUBS_WORKER_2
    FOREIGN KEY (FK_WORKER_idNum)
    REFERENCES CLUBS_WORKER (idNum);
 
ALTER TABLE CLUBS_WORKER ADD CONSTRAINT FK_CLUBS_WORKER_3
    FOREIGN KEY (FK_DEPARTMENT_idNum)
    REFERENCES DEPARTMENT (idNum);
 
ALTER TABLE THROPHIES ADD CONSTRAINT FK_THROPHIES_1
    FOREIGN KEY (FK_CLUBS_WORKER_idNum)
    REFERENCES CLUBS_WORKER (idNum)
    ON DELETE RESTRICT;
 
ALTER TABLE NECESSARY_FOR ADD CONSTRAINT FK_NECESSARY_FOR_1
    FOREIGN KEY (FK_STUDENT_SUBJECT_idNum)
    REFERENCES STUDENT_SUBJECT (idNum)
    ON DELETE CASCADE;
 
ALTER TABLE NECESSARY_FOR ADD CONSTRAINT FK_NECESSARY_FOR_2
    FOREIGN KEY (FK_STUDENT_SUBJECT_idNum_)
    REFERENCES STUDENT_SUBJECT (idNum)
    ON DELETE CASCADE;
 
ALTER TABLE STUDIES_FOR ADD CONSTRAINT FK_STUDIES_FOR_1
    FOREIGN KEY (FK_STUDENT_SUBJECT_idNum)
    REFERENCES STUDENT_SUBJECT (idNum)
    ON DELETE RESTRICT;
 
ALTER TABLE STUDIES_FOR ADD CONSTRAINT FK_STUDIES_FOR_2
    FOREIGN KEY (FK_STUDENT_idNum)
    REFERENCES STUDENT (idNum)
    ON DELETE SET NULL;
 
ALTER TABLE TEACH ADD CONSTRAINT FK_TEACH_1
    FOREIGN KEY (FK_WORKER_idNum)
    REFERENCES CLUBS_WORKER (idNum);
 
ALTER TABLE TEACH ADD CONSTRAINT FK_TEACH_2
    FOREIGN KEY (FK_STUDENT_SUBJECT_idNum)
    REFERENCES STUDENT_SUBJECT (idNum)
    ON DELETE RESTRICT;
 
ALTER TABLE CONTROL ADD CONSTRAINT FK_CONTROL_1
    FOREIGN KEY (FK_DEPARTMENT_idNum)
    REFERENCES DEPARTMENT (idNum)
    ON DELETE SET NULL;
 
ALTER TABLE CONTROL ADD CONSTRAINT FK_CONTROL_2
    FOREIGN KEY (FK_TRUCKS_idNum)
    REFERENCES TRUCKS (idNum)
    ON DELETE SET NULL;
 
ALTER TABLE TEACHED_IN ADD CONSTRAINT FK_TEACHED_IN_1
    FOREIGN KEY (FK_CLASS_idNum)
    REFERENCES CLASS (idNum)
    ON DELETE RESTRICT;
 
ALTER TABLE TEACHED_IN ADD CONSTRAINT FK_TEACHED_IN_2
    FOREIGN KEY (FK_STUDENT_SUBJECT_idNum)
    REFERENCES STUDENT_SUBJECT (idNum)
    ON DELETE RESTRICT;
 
ALTER TABLE SOLD ADD CONSTRAINT FK_SOLD_1
    FOREIGN KEY (FK_DEPARTMENT_idNum)
    REFERENCES DEPARTMENT (idNum)
    ON DELETE SET NULL;
 
ALTER TABLE SOLD ADD CONSTRAINT FK_SOLD_2
    FOREIGN KEY (FK_ITENS_idNum)
    REFERENCES THE_BUY_ITENS (idNum);
 
ALTER TABLE ACCOUNT_PAY_BY ADD CONSTRAINT FK_ACCOUNT_PAY_BY_1
    FOREIGN KEY (FK_ONLINE_ACCOUNT_idNum)
    REFERENCES ONLINE_ACCOUNT (idNum)
    ON DELETE SET NULL;
 
ALTER TABLE WRITEN_BY ADD CONSTRAINT FK_WRITEN_BY_1
    FOREIGN KEY (FK_AUTOR_autor_name)
    REFERENCES AUTOR (autor_name)
    ON DELETE RESTRICT;
 
ALTER TABLE WRITEN_BY ADD CONSTRAINT FK_WRITEN_BY_2
    FOREIGN KEY (FK_LIBRARY_BOOKS_idNum)
    REFERENCES LIBRARY_BOOKS (idNum)
    ON DELETE SET NULL;
 
ALTER TABLE BORROW ADD CONSTRAINT FK_BORROW_1
    FOREIGN KEY (FK_STUDENT_idNum)
    REFERENCES STUDENT (idNum)
    ON DELETE RESTRICT;
 
ALTER TABLE BORROW ADD CONSTRAINT FK_BORROW_2
    FOREIGN KEY (FK_LIBRARY_BOOKS_idNum)
    REFERENCES LIBRARY_BOOKS (idNum)
    ON DELETE SET NULL;
 
ALTER TABLE REALIZES ADD CONSTRAINT FK_REALIZES_1
    FOREIGN KEY (FK_CLUBS_WORKER_idNum)
    REFERENCES CLUBS_WORKER (idNum)
    ON DELETE RESTRICT;
 
ALTER TABLE REALIZES ADD CONSTRAINT FK_REALIZES_2
    FOREIGN KEY (FK_EVENTS_event_name)
    REFERENCES EVENTS (event_name)
    ON DELETE SET NULL;
 
ALTER TABLE PARTICIPATE ADD CONSTRAINT FK_PARTICIPATE_1
    FOREIGN KEY (FK_STUDENT_idNum)
    REFERENCES STUDENT (idNum)
    ON DELETE RESTRICT;
 
ALTER TABLE PARTICIPATE ADD CONSTRAINT FK_PARTICIPATE_2
    FOREIGN KEY (FK_CLUBS_WORKER_idNum)
    REFERENCES CLUBS_WORKER (idNum)
    ON DELETE SET NULL;