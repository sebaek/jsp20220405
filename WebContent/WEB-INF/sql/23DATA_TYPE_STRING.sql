USE mydb1;

-- CHAR : 고정길이 문자열
CREATE TABLE MyTable4 (
	col1 CHAR,
    col2 CHAR(1),
    col3 CHAR(2),
    col4 CHAR(5)
);

DESC MyTable4;

SELECT * FROM MyTable4;

INSERT INTO MyTable4 (col1)
VALUES ('a');
INSERT INTO MyTable4 (col1)
VALUES ('ab'); -- 안됨
INSERT INTO MyTable4 (col3)
VALUES ('ab'); 
INSERT INTO MyTable4 (col3)
VALUES ('b');
INSERT INTO MyTable4 (col4)
VALUES ('abcde');
INSERT INTO MyTable4 (col4)
VALUES ('abcdef'); -- 안됨
INSERT INTO MyTable4 (col4)
VALUES ('abc'); -- 되지만 5개 공간 차지
INSERT INTO MyTable4 (col4)
VALUES ('가나다라마');


