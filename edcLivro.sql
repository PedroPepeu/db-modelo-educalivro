/* trab2_educalivros_logic: */

CREATE TABLE RESPONSIBLE (
    sex CHAR,
    cpf VARCHAR(30) PRIMARY KEY,
    email VARCHAR(30),
    f_name VARCHAR(30),
    l_name VARCHAR(30),
    FK_phone_phone_PK VARCHAR(20),
    zip_code VARCHAR(20),
    city VARCHAR(30),
    complement VARCHAR(30)
);

CREATE TABLE CLASSROOM (
    num_id VARCHAR(30) PRIMARY KEY,
    floor_num INT,
    building INT,
    number_class INT,
    FK_time_hr_time_hr_PK TIME,
    availability BOOLEAN,
    meters_size FLOAT,
    modality VARCHAR(20),
    usage_price FLOAT,
    CLASSROOM_TIPO INT,
    FK_SUBJECT_num_id VARCHAR(30),
    FK_DEPARTMENT_PERSON_PROJECT_num_id VARCHAR(30)
);

CREATE TABLE WORKS (
    FK_activity_activity_PK VARCHAR(20),
    dt_conclusion DATE,
    WORKS_TIPO INT,
    FK_CLASSROOM_num_id VARCHAR(30)
);

CREATE TABLE SUBJECT (
    menu VARCHAR(20),
    num_id VARCHAR(30) PRIMARY KEY,
    obligatoriness BOOLEAN,
    credit_h INT,
    modality VARCHAR(20),
    school_year DATE,
    sbj_workload VARCHAR(20),
    monthly_price FLOAT
);

CREATE TABLE TRANSPORT (
    Plate VARCHAR(20),
    num_id VARCHAR(30) PRIMARY KEY,
    capacity INT,
    usage_price FLOAT,
    storage_capacity FLOAT,
    place VARCHAR(30),
    garage_adrss VARCHAR(30),
    TRANSPORT_TIPO INT,
    FK_DEPARTMENT_PERSON_PROJECT_num_id VARCHAR(30),
    FK_DEPARTMENT_PERSON_PROJECT_num_id_ VARCHAR(30),
    FK_DEPARTMENT_PERSON_PROJECT_num_id__ VARCHAR(30)
);

CREATE TABLE DORMITORY (
    monthly_price FLOAT,
    num_id VARCHAR(30) PRIMARY KEY,
    css FLOAT,
    floor_number INT,
    room_size FLOAT,
    DORMITORY_TIPO INT,
    Tampons_number INT
);

CREATE TABLE BOOKS (
    title VARCHAR(30),
    dt_release DATE,
    edition INT,
    synopsis VARCHAR(30),
    price FLOAT,
    num_id VARCHAR(30),
    quantity INT,
    gender CHAR,
    available BOOLEAN,
    type_of VARCHAR(30),
    sold_qnt INT,
    PRIMARY KEY (title, num_id)
);

CREATE TABLE AUTOR (
    full_name VARCHAR(30),
    num_id VARCHAR(30),
    num_books_released INT,
    age INT,
    synopsis VARCHAR(30),
    sex CHAR,
    photo VARCHAR(30),
    PRIMARY KEY (full_name, num_id)
);

CREATE TABLE LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT (
    l_id VARCHAR(30),
    l_pssd VARCHAR(30),
    debt FLOAT,
    borrow_points INT,
    payment_method VARCHAR(30),
    own_permition BOOLEAN,
    LIBRARY_CARD_TIPO INT,
    dt_expires DATE,
    num_id VARCHAR(30),
    place VARCHAR(30),
    full_name VARCHAR(30),
    num_workers INT,
    num_balls INT,
    num_shirts INT,
    trophies INT,
    h_items INT,
    beds INT,
    pillows INT,
    blankets INT,
    emergence_number VARCHAR(30),
    distance FLOAT,
    t_price FLOAT,
    computer INT,
    lrk INT,
    raspberry INT,
    arduino INT,
    cooper_wire INT,
    pliers INT,
    keyboards INT,
    mouses INT,
    monitors INT,
    protoboards INT,
    Logic_gates INT,
    usage_price FLOAT,
    test_tube_rack INT,
    test_tube INT,
    beaker INT,
    bunsen_burner INT,
    barometer INT,
    alcohol_burner INT,
    graduated_cylinder INT,
    chairs_qnt INT,
    room_size FLOAT,
    stage_size FLOAT,
    FK_projector_projector_PK INT,
    FK_television_television_PK INT,
    FK_speaker_speaker_PK INT,
    cpf VARCHAR(30),
    sex CHAR,
    email VARCHAR(30),
    picture VARCHAR(30),
    zip_code VARCHAR(20),
    city VARCHAR(30),
    complement VARCHAR(30),
    dt_birth DATE,
    f_name VARCHAR(30),
    l_name VARCHAR(30),
    phone VARCHAR(20),
    emergence_phone VARCHAR(20),
    p_allergies VARCHAR(30),
    resume VARCHAR(30),
    school_year DATE,
    b_analisys FLOAT,
    grade_avr FLOAT,
    s_workload FLOAT,
    pay_mth VARCHAR(30),
    cloth_v VARCHAR(20),
    monthly FLOAT,
    bonuses FLOAT,
    PERSON_TIPO INT,
    PERSON_num_id VARCHAR(30),
    FK_SUBJECT_num_id VARCHAR(30),
    FK_DEPARTMENT_num_id VARCHAR(30),
    income FLOAT,
    FK_events_events_PK INT,
    monthly_price FLOAT,
    PROJECT_TIPO INT,
    FK_achievements_achievements_PK INT,
    FK_papers_papers_PK INT,
    FK_quotes_quotes_PK INT,
    r_subject VARCHAR(30),
    positions VARCHAR(30),
    voting_results VARCHAR(30),
    s_names VARCHAR(30),
    start_dt DATE,
    end_dt DATE,
    medals INT,
    students_positions VARCHAR(30),
    FK_TEACHER_num_id VARCHAR(30),
    FK_DORMITORY_num_id VARCHAR(30),
    FK_BOOKS_title VARCHAR(30),
    FK_BOOKS_num_id VARCHAR(30),
    FK_LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT_l_id VARCHAR(30),
    FK_LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT_num_id VARCHAR(30),
    PRIMARY KEY (l_id, num_id)
);

CREATE TABLE ONLINE_ACC (
    full_name VARCHAR(30),
    l_id VARCHAR(30) PRIMARY KEY,
    sex CHAR,
    cpf VARCHAR(30),
    phone VARCHAR(20),
    email VARCHAR(30),
    picture VARCHAR(20),
    complement VARCHAR(30),
    city VARCHAR(30),
    zip_code VARCHAR(30)
);

CREATE TABLE BUY_BUYS (
    FK_BOOKS_title VARCHAR(30),
    FK_BOOKS_num_id VARCHAR(30),
    FK_ONLINE_ACC_l_id VARCHAR(30)
);

CREATE TABLE MEDICINE&DRUGS (
);

CREATE TABLE pay_mth (
    c_wallet VARCHAR(30)
);

CREATE TABLE card (
    name_card VARCHAR(30),
    number_card VARCHAR(30),
    cvc VARCHAR(3),
    dt_validity DATE,
    credit_qnt INT,
    card_TIPO VARCHAR(20),
    PRIMARY KEY (name_card, number_card)
);

CREATE TABLE phone (
    phone_PK VARCHAR(20) NOT NULL PRIMARY KEY,
    phone VARCHAR(20)
);

CREATE TABLE time_hr (
    time_hr_PK TIME NOT NULL PRIMARY KEY,
    time_hr TIME
);

CREATE TABLE activity (
    activity_PK VARCHAR(20) NOT NULL PRIMARY KEY,
    activity VARCHAR(20)
);

CREATE TABLE achievements (
    achievements_PK INT NOT NULL PRIMARY KEY,
    achievements INT
);

CREATE TABLE papers (
    papers_PK INT NOT NULL PRIMARY KEY,
    papers INT
);

CREATE TABLE quotes (
    quotes_PK INT NOT NULL PRIMARY KEY,
    quotes INT
);

CREATE TABLE events (
    events_PK INT NOT NULL PRIMARY KEY,
    events INT
);

CREATE TABLE projector (
    projector_PK INT NOT NULL PRIMARY KEY,
    projector INT
);

CREATE TABLE television (
    television_PK INT NOT NULL PRIMARY KEY,
    television INT
);

CREATE TABLE speaker (
    speaker_PK INT NOT NULL PRIMARY KEY,
    speaker INT
);

CREATE TABLE DEPENDS_ON (
    FK_SUBJECT_num_id VARCHAR(30),
    FK_SUBJECT_num_id_ VARCHAR(30)
);

CREATE TABLE DEPENDS (
    FK_RESPONSIBLE_cpf VARCHAR(30),
    FK_PERSON_num_id VARCHAR(30)
);

CREATE TABLE ATTENDS (
    FK_PERSON_num_id VARCHAR(30),
    FK_SUBJECT_num_id VARCHAR(30),
    grade FLOAT,
    fouls INT,
    dt_start DATE
);

CREATE TABLE TEACHES (
    FK_SUBJECT_num_id VARCHAR(30),
    FK_PERSON_num_id VARCHAR(30)
);

CREATE TABLE BRACKET (
    FK_PERSON_num_id VARCHAR(30)
);

CREATE TABLE WORK (
    FK_PROJECT_num_id VARCHAR(30),
    FK_PERSON_num_id VARCHAR(30)
);

CREATE TABLE REUNITE (
    FK_PROJECT_num_id VARCHAR(30),
    FK_CLASSROOM_num_id VARCHAR(30)
);

CREATE TABLE HAVE (
    FK_DEPARTMENT_PERSON_PROJECT_num_id VARCHAR(30),
    FK_TRANSPORT_num_id VARCHAR(30)
);

CREATE TABLE DRIVES (
    FK_TRANSPORT_num_id VARCHAR(30),
    FK_DEPARTMENT_PERSON_PROJECT_num_id VARCHAR(30)
);

CREATE TABLE WRITEN_BY (
    FK_BOOKS_title VARCHAR(30),
    FK_BOOKS_num_id VARCHAR(30),
    FK_AUTOR_full_name VARCHAR(30),
    FK_AUTOR_num_id VARCHAR(30)
);

CREATE TABLE TRANSPORTED_BY (
    FK_TRANSPORT_num_id VARCHAR(30),
    dt_arrive DATE,
    dt_departure DATE,
    t_code VARCHAR(30) PRIMARY KEY,
    freight FLOAT,
    arrival_locale VARCHAR(30)
);

CREATE TABLE BORROWS (
    FK_BOOKS_title VARCHAR(30),
    FK_BOOKS_num_id VARCHAR(30),
    FK_LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT_l_id VARCHAR(30),
    FK_LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT_num_id VARCHAR(30),
    price_p_day FLOAT,
    dt_expiration DATE,
    b_id VARCHAR(30) PRIMARY KEY
);

CREATE TABLE WORKS_AT (
    FK_LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT_l_id VARCHAR(30),
    FK_LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT_num_id VARCHAR(30),
    FK_TRANSPORT_num_id VARCHAR(30)
);

CREATE TABLE WORKS_AT (
    FK_LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT_l_id VARCHAR(30),
    FK_LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT_num_id VARCHAR(30),
    FK_LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT_l_id_ VARCHAR(30),
    FK_LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT_num_id_ VARCHAR(30)
);

CREATE TABLE OWNS (
    FK_LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT_l_id VARCHAR(30),
    FK_LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT_num_id VARCHAR(30)
);

CREATE TABLE OWNS (
    FK_TRANSPORT_num_id VARCHAR(30)
);

CREATE TABLE HAVE (
    FK_card_name_card VARCHAR(30),
    FK_card_number_card VARCHAR(30)
);

CREATE TABLE HAVE (
    FK_RESPONSIBLE_cpf VARCHAR(30)
);

CREATE TABLE HAVE (
    FK_ONLINE_ACC_l_id VARCHAR(30)
);
 
ALTER TABLE RESPONSIBLE ADD CONSTRAINT FK_RESPONSIBLE_2
    FOREIGN KEY (FK_phone_phone_PK)
    REFERENCES phone (phone_PK)
    ON DELETE NO ACTION;
 
ALTER TABLE CLASSROOM ADD CONSTRAINT FK_CLASSROOM_2
    FOREIGN KEY (FK_time_hr_time_hr_PK)
    REFERENCES time_hr (time_hr_PK)
    ON DELETE NO ACTION;
 
ALTER TABLE CLASSROOM ADD CONSTRAINT FK_CLASSROOM_3
    FOREIGN KEY (FK_SUBJECT_num_id)
    REFERENCES SUBJECT (num_id)
    ON DELETE SET NULL;
 
ALTER TABLE CLASSROOM ADD CONSTRAINT FK_CLASSROOM_4
    FOREIGN KEY (FK_DEPARTMENT_PERSON_PROJECT_num_id)
    REFERENCES DEPARTMENT (num_id);
 
ALTER TABLE WORKS ADD CONSTRAINT FK_WORKS_1
    FOREIGN KEY (FK_activity_activity_PK)
    REFERENCES activity (activity_PK)
    ON DELETE NO ACTION;
 
ALTER TABLE WORKS ADD CONSTRAINT FK_WORKS_2
    FOREIGN KEY (FK_CLASSROOM_num_id)
    REFERENCES CLASSROOM (num_id)
    ON DELETE SET NULL;
 
ALTER TABLE TRANSPORT ADD CONSTRAINT FK_TRANSPORT_2
    FOREIGN KEY (FK_DEPARTMENT_PERSON_PROJECT_num_id, FK_DEPARTMENT_PERSON_PROJECT_num_id_, FK_DEPARTMENT_PERSON_PROJECT_num_id__)
    REFERENCES DEPARTMENT (num_id);
 
ALTER TABLE LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT ADD CONSTRAINT FK_LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT_1
    FOREIGN KEY (FK_LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT_l_id, FK_LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT_num_id, PERSON_num_id, FK_DEPARTMENT_num_id, FK_TEACHER_num_id)
    REFERENCES LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT (l_id, num_id, l_id, num_id, l_id);
 
ALTER TABLE LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT ADD CONSTRAINT FK_LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT_3
    FOREIGN KEY (FK_projector_projector_PK)
    REFERENCES projector (projector_PK);
 
ALTER TABLE LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT ADD CONSTRAINT FK_LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT_4
    FOREIGN KEY (FK_television_television_PK)
    REFERENCES television (television_PK);
 
ALTER TABLE LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT ADD CONSTRAINT FK_LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT_5
    FOREIGN KEY (FK_speaker_speaker_PK)
    REFERENCES speaker (speaker_PK);
 
ALTER TABLE LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT ADD CONSTRAINT FK_LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT_6
    FOREIGN KEY (FK_SUBJECT_num_id)
    REFERENCES SUBJECT (num_id);
 
ALTER TABLE LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT ADD CONSTRAINT FK_LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT_7
    FOREIGN KEY (FK_events_events_PK)
    REFERENCES events (events_PK);
 
ALTER TABLE LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT ADD CONSTRAINT FK_LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT_8
    FOREIGN KEY (FK_achievements_achievements_PK)
    REFERENCES achievements (achievements_PK);
 
ALTER TABLE LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT ADD CONSTRAINT FK_LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT_9
    FOREIGN KEY (FK_papers_papers_PK)
    REFERENCES papers (papers_PK);
 
ALTER TABLE LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT ADD CONSTRAINT FK_LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT_10
    FOREIGN KEY (FK_quotes_quotes_PK)
    REFERENCES quotes (quotes_PK);
 
ALTER TABLE LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT ADD CONSTRAINT FK_LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT_11
    FOREIGN KEY (FK_DORMITORY_num_id)
    REFERENCES DORMITORY (num_id);
 
ALTER TABLE LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT ADD CONSTRAINT FK_LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT_12
    FOREIGN KEY (FK_BOOKS_title, FK_BOOKS_num_id)
    REFERENCES BOOKS (title, num_id);
 
ALTER TABLE BUY_BUYS ADD CONSTRAINT FK_BUY_BUYS_1
    FOREIGN KEY (FK_BOOKS_title, FK_BOOKS_num_id)
    REFERENCES BOOKS (title, num_id);
 
ALTER TABLE BUY_BUYS ADD CONSTRAINT FK_BUY_BUYS_2
    FOREIGN KEY (FK_ONLINE_ACC_l_id)
    REFERENCES ONLINE_ACC (l_id);
 
ALTER TABLE DEPENDS_ON ADD CONSTRAINT FK_DEPENDS_ON_1
    FOREIGN KEY (FK_SUBJECT_num_id)
    REFERENCES SUBJECT (num_id)
    ON DELETE CASCADE;
 
ALTER TABLE DEPENDS_ON ADD CONSTRAINT FK_DEPENDS_ON_2
    FOREIGN KEY (FK_SUBJECT_num_id_)
    REFERENCES SUBJECT (num_id)
    ON DELETE CASCADE;
 
ALTER TABLE DEPENDS ADD CONSTRAINT FK_DEPENDS_1
    FOREIGN KEY (FK_RESPONSIBLE_cpf)
    REFERENCES RESPONSIBLE (cpf)
    ON DELETE RESTRICT;
 
ALTER TABLE DEPENDS ADD CONSTRAINT FK_DEPENDS_2
    FOREIGN KEY (FK_PERSON_num_id)
    REFERENCES ??? (???);
 
ALTER TABLE ATTENDS ADD CONSTRAINT FK_ATTENDS_1
    FOREIGN KEY (FK_PERSON_num_id)
    REFERENCES ??? (???);
 
ALTER TABLE ATTENDS ADD CONSTRAINT FK_ATTENDS_2
    FOREIGN KEY (FK_SUBJECT_num_id)
    REFERENCES SUBJECT (num_id)
    ON DELETE RESTRICT;
 
ALTER TABLE TEACHES ADD CONSTRAINT FK_TEACHES_1
    FOREIGN KEY (FK_SUBJECT_num_id)
    REFERENCES SUBJECT (num_id)
    ON DELETE RESTRICT;
 
ALTER TABLE TEACHES ADD CONSTRAINT FK_TEACHES_2
    FOREIGN KEY (FK_PERSON_num_id)
    REFERENCES ??? (???);
 
ALTER TABLE BRACKET ADD CONSTRAINT FK_BRACKET_1
    FOREIGN KEY (FK_PERSON_num_id)
    REFERENCES ??? (???);
 
ALTER TABLE WORK ADD CONSTRAINT FK_WORK_1
    FOREIGN KEY (FK_PROJECT_num_id, FK_PERSON_num_id)
    REFERENCES ??? (???);
 
ALTER TABLE REUNITE ADD CONSTRAINT FK_REUNITE_1
    FOREIGN KEY (FK_PROJECT_num_id)
    REFERENCES ??? (???);
 
ALTER TABLE REUNITE ADD CONSTRAINT FK_REUNITE_2
    FOREIGN KEY (FK_CLASSROOM_num_id)
    REFERENCES CLASSROOM (num_id)
    ON DELETE RESTRICT;
 
ALTER TABLE HAVE ADD CONSTRAINT FK_HAVE_1
    FOREIGN KEY (FK_DEPARTMENT_PERSON_PROJECT_num_id)
    REFERENCES ??? (???);
 
ALTER TABLE HAVE ADD CONSTRAINT FK_HAVE_2
    FOREIGN KEY (FK_TRANSPORT_num_id)
    REFERENCES TRANSPORT (num_id)
    ON DELETE SET NULL;
 
ALTER TABLE DRIVES ADD CONSTRAINT FK_DRIVES_1
    FOREIGN KEY (FK_TRANSPORT_num_id)
    REFERENCES TRANSPORT (num_id)
    ON DELETE RESTRICT;
 
ALTER TABLE DRIVES ADD CONSTRAINT FK_DRIVES_2
    FOREIGN KEY (FK_DEPARTMENT_PERSON_PROJECT_num_id)
    REFERENCES ??? (???);
 
ALTER TABLE WRITEN_BY ADD CONSTRAINT FK_WRITEN_BY_1
    FOREIGN KEY (FK_BOOKS_title, FK_BOOKS_num_id)
    REFERENCES BOOKS (title, num_id)
    ON DELETE RESTRICT;
 
ALTER TABLE WRITEN_BY ADD CONSTRAINT FK_WRITEN_BY_2
    FOREIGN KEY (FK_AUTOR_full_name, FK_AUTOR_num_id)
    REFERENCES AUTOR (full_name, num_id)
    ON DELETE RESTRICT;
 
ALTER TABLE TRANSPORTED_BY ADD CONSTRAINT FK_TRANSPORTED_BY_2
    FOREIGN KEY (FK_TRANSPORT_num_id)
    REFERENCES TRANSPORT (num_id)
    ON DELETE SET NULL;
 
ALTER TABLE BORROWS ADD CONSTRAINT FK_BORROWS_2
    FOREIGN KEY (FK_BOOKS_title, FK_BOOKS_num_id)
    REFERENCES BOOKS (title, num_id)
    ON DELETE SET NULL;
 
ALTER TABLE BORROWS ADD CONSTRAINT FK_BORROWS_3
    FOREIGN KEY (FK_LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT_l_id, FK_LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT_num_id)
    REFERENCES LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT (l_id, num_id)
    ON DELETE SET NULL;
 
ALTER TABLE WORKS_AT ADD CONSTRAINT FK_WORKS_AT_1
    FOREIGN KEY (FK_LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT_l_id, FK_LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT_num_id)
    REFERENCES LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT (l_id, num_id)
    ON DELETE SET NULL;
 
ALTER TABLE WORKS_AT ADD CONSTRAINT FK_WORKS_AT_2
    FOREIGN KEY (FK_TRANSPORT_num_id)
    REFERENCES TRANSPORT (num_id)
    ON DELETE SET NULL;
 
ALTER TABLE WORKS_AT ADD CONSTRAINT FK_WORKS_AT_1
    FOREIGN KEY (FK_LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT_l_id_, FK_LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT_num_id_)
    REFERENCES LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT (l_id, num_id)
    ON DELETE SET NULL;
 
ALTER TABLE WORKS_AT ADD CONSTRAINT FK_WORKS_AT_2
    FOREIGN KEY (FK_LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT_l_id, FK_LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT_num_id)
    REFERENCES LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT (l_id, num_id)
    ON DELETE SET NULL;
 
ALTER TABLE OWNS ADD CONSTRAINT FK_OWNS_1
    FOREIGN KEY (FK_LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT_l_id, FK_LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT_num_id)
    REFERENCES LIBRARY_CARD_DEPARTMENT_PERSON_PROJECT (l_id, num_id)
    ON DELETE SET NULL;
 
ALTER TABLE OWNS ADD CONSTRAINT FK_OWNS_1
    FOREIGN KEY (FK_TRANSPORT_num_id)
    REFERENCES TRANSPORT (num_id)
    ON DELETE SET NULL;
 
ALTER TABLE HAVE ADD CONSTRAINT FK_HAVE_1
    FOREIGN KEY (FK_card_name_card, FK_card_number_card)
    REFERENCES card (name_card, number_card)
    ON DELETE SET NULL;
 
ALTER TABLE HAVE ADD CONSTRAINT FK_HAVE_1
    FOREIGN KEY (FK_RESPONSIBLE_cpf)
    REFERENCES RESPONSIBLE (cpf)
    ON DELETE SET NULL;
 
ALTER TABLE HAVE ADD CONSTRAINT FK_HAVE_1
    FOREIGN KEY (FK_ONLINE_ACC_l_id)
    REFERENCES ONLINE_ACC (l_id)
    ON DELETE SET NULL;