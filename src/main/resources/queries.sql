-- Create MASTER_DB.TENANT_DB_LIST table
CREATE TABLE MASTER_DB.TENANT_DB_LIST (
                                          DATABASE_ID VARCHAR(20) NOT NULL,
                                          DB_NAME VARCHAR(200) NOT NULL,
                                          DB_PASSWORD VARCHAR(200) NOT NULL,
                                          DB_URL VARCHAR(200) NOT NULL,
                                          PRIMARY KEY (DATABASE_ID)
);

-- Insert data into MASTER_DB.TENANT_DB_LIST
INSERT INTO MASTER_DB.TENANT_DB_LIST (DATABASE_ID, DB_NAME, DB_PASSWORD, DB_URL)
VALUES ('1001', 'root', '#adminadmin1', 'jdbc:mysql://localhost:3306/tenant_db_1');

INSERT INTO MASTER_DB.TENANT_DB_LIST (DATABASE_ID, DB_NAME, DB_PASSWORD, DB_URL)
VALUES ('1002', 'root', '#adminadmin1', 'jdbc:mysql://localhost:3306/tenant_db_2');

-- Commit the transaction
COMMIT;

-- Create TENANT_DB_1.USERS table
CREATE TABLE TENANT_DB_1.USERS (
                                   USER_ID VARCHAR(200),
                                   USER_NAME VARCHAR(200),
                                   PHONE_NO VARCHAR(200),
                                   EMAIL_ID VARCHAR(200),
                                   PRIMARY KEY (USER_ID)
);

-- Insert data into TENANT_DB_1.USERS
INSERT INTO TENANT_DB_1.USERS (USER_ID, USER_NAME, PHONE_NO, EMAIL_ID)
VALUES ('RD', 'root', '#adminadmin1', 'rahul.dravid@bcci.tv');

INSERT INTO TENANT_DB_1.USERS (USER_ID, USER_NAME, PHONE_NO, EMAIL_ID)
VALUES ('ST', 'root', '#adminadmin1', 'sachin.tendulkar@bcci.tv');

-- Commit the transaction
COMMIT;

-- Create TENANT_DB_2.USERS table
CREATE TABLE TENANT_DB_2.USERS (
                                   USER_ID VARCHAR(200),
                                   USER_NAME VARCHAR(200),
                                   PHONE_NO VARCHAR(200),
                                   EMAIL_ID VARCHAR(200),
                                   PRIMARY KEY (USER_ID)
);

-- Insert data into TENANT_DB_2.USERS
INSERT INTO TENANT_DB_2.USERS (USER_ID, USER_NAME, PHONE_NO, EMAIL_ID)
VALUES ('RP', 'Ricky Ponting', '9900887765', 'ricky.ponting@ca.au');

INSERT INTO TENANT_DB_2.USERS (USER_ID, USER_NAME, PHONE_NO, EMAIL_ID)
VALUES ('BL', 'Brett Lee', '6677887766', 'brett.lee@ca.au');

-- Commit the transaction
COMMIT;