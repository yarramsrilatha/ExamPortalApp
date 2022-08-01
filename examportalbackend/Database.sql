
ALTER TABLE "SYSTEM"."USERS" DROP CONSTRAINT "SYS_C007155";

DROP INDEX "SYSTEM"."SYS_C007155";

DROP TABLE "SYSTEM"."USERS";

CREATE TABLE "SYSTEM"."USERS" (
		"ID" NUMBER(19 , 0) NOT NULL,
		"EMAIL" VARCHAR2(255),
		"ENABLED" NUMBER(1 , 0) NOT NULL,
		"FIRST_NAME" VARCHAR2(255),
		"LAST_NAME" VARCHAR2(255),
		"PASSWORD" VARCHAR2(255),
		"PHONE" VARCHAR2(255),
		"PROFILE" VARCHAR2(255),
		"USERNAME" VARCHAR2(255)
	);

CREATE UNIQUE INDEX "SYSTEM"."SYS_C007155" ON "SYSTEM"."USERS" ("ID" ASC);

ALTER TABLE "SYSTEM"."USERS" ADD CONSTRAINT "SYS_C007155" PRIMARY KEY ("ID");
ALTER TABLE "SYSTEM"."ROLES" DROP CONSTRAINT "SYS_C007157";

DROP INDEX "SYSTEM"."SYS_C007157";

DROP TABLE "SYSTEM"."ROLES";

CREATE TABLE "SYSTEM"."ROLES" (
		"ROLE_ID" NUMBER(19 , 0) NOT NULL,
		"ROLE_NAME" VARCHAR2(255)
	);

CREATE UNIQUE INDEX "SYSTEM"."SYS_C007157" ON "SYSTEM"."ROLES" ("ROLE_ID" ASC);

ALTER TABLE "SYSTEM"."ROLES" ADD CONSTRAINT "SYS_C007157" PRIMARY KEY ("ROLE_ID");
--<ScriptOptions statementTerminator=";"/>

ALTER TABLE "SYSTEM"."USER_ROLE" DROP CONSTRAINT "FK7U21823KTFHU9BMX2350X6N8S";

ALTER TABLE "SYSTEM"."USER_ROLE" DROP CONSTRAINT "FKJ345GK1BOVQVFAME88RCX7YYX";

ALTER TABLE "SYSTEM"."USER_ROLE" DROP CONSTRAINT "SYS_C007159";

DROP INDEX "SYSTEM"."SYS_C007159";

DROP TABLE "SYSTEM"."USER_ROLE";

CREATE TABLE "SYSTEM"."USER_ROLE" (
		"USER_ROLE_ID" NUMBER(19 , 0) NOT NULL,
		"ROLE_ROLE_ID" NUMBER(19 , 0),
		"USER_ID" NUMBER(19 , 0)
	);

CREATE UNIQUE INDEX "SYSTEM"."SYS_C007159" ON "SYSTEM"."USER_ROLE" ("USER_ROLE_ID" ASC);

ALTER TABLE "SYSTEM"."USER_ROLE" ADD CONSTRAINT "SYS_C007159" PRIMARY KEY ("USER_ROLE_ID");

ALTER TABLE "SYSTEM"."USER_ROLE" ADD CONSTRAINT "FK7U21823KTFHU9BMX2350X6N8S" FOREIGN KEY ("ROLE_ROLE_ID")
	REFERENCES "SYSTEM"."ROLES" ("ROLE_ID")
	ON DELETE RESTRICT
	ON UPDATE CASCADE;

ALTER TABLE "SYSTEM"."USER_ROLE" ADD CONSTRAINT "FKJ345GK1BOVQVFAME88RCX7YYX" FOREIGN KEY ("USER_ID")
	REFERENCES "SYSTEM"."USERS" ("ID")
	ON DELETE RESTRICT
	ON UPDATE CASCADE;
--<ScriptOptions statementTerminator=";"/>

ALTER TABLE "SYSTEM"."QUESTION" DROP CONSTRAINT "FKQ1XD7V9IUWS36J2PB22MY632E";

ALTER TABLE "SYSTEM"."QUESTION" DROP CONSTRAINT "SYS_C007203";

DROP INDEX "SYSTEM"."SYS_C007203";

DROP TABLE "SYSTEM"."QUESTION";

CREATE TABLE "SYSTEM"."QUESTION" (
		"QUES_ID" NUMBER(19 , 0) NOT NULL,
		"ANSWER" VARCHAR2(255),
		"CONTENT" null,
		"IMAGE" VARCHAR2(255),
		"OPTION1" VARCHAR2(255),
		"OPTION2" VARCHAR2(255),
		"OPTION3" VARCHAR2(255),
		"OPTION4" VARCHAR2(255),
		"QUIZ_Q_ID" NUMBER(19 , 0)
	);

CREATE UNIQUE INDEX "SYSTEM"."SYS_C007203" ON "SYSTEM"."QUESTION" ("QUES_ID" ASC);

ALTER TABLE "SYSTEM"."QUESTION" ADD CONSTRAINT "SYS_C007203" PRIMARY KEY ("QUES_ID");

ALTER TABLE "SYSTEM"."QUESTION" ADD CONSTRAINT "FKQ1XD7V9IUWS36J2PB22MY632E" FOREIGN KEY ("QUIZ_Q_ID")
	REFERENCES "SYSTEM"."QUIZ" ("Q_ID")
	ON DELETE RESTRICT
	ON UPDATE CASCADE;
--<ScriptOptions statementTerminator=";"/>

ALTER TABLE "SYSTEM"."QUIZ" DROP CONSTRAINT "FKESQYVGXNAB2UL8OSR3A1DTULC";

ALTER TABLE "SYSTEM"."QUIZ" DROP CONSTRAINT "SYS_C007206";

DROP INDEX "SYSTEM"."SYS_C007206";

DROP TABLE "SYSTEM"."QUIZ";

CREATE TABLE "SYSTEM"."QUIZ" (
		"Q_ID" NUMBER(19 , 0) NOT NULL,
		"ACTIVE" NUMBER(1 , 0) NOT NULL,
		"DESCRIPTION" null,
		"MAX_MARKS" VARCHAR2(255),
		"NUMBER_OF_QUESTIONS" VARCHAR2(255),
		"TITLE" VARCHAR2(255),
		"CATEGORY_CID" NUMBER(19 , 0)
	);

CREATE UNIQUE INDEX "SYSTEM"."SYS_C007206" ON "SYSTEM"."QUIZ" ("Q_ID" ASC);

ALTER TABLE "SYSTEM"."QUIZ" ADD CONSTRAINT "SYS_C007206" PRIMARY KEY ("Q_ID");

ALTER TABLE "SYSTEM"."QUIZ" ADD CONSTRAINT "FKESQYVGXNAB2UL8OSR3A1DTULC" FOREIGN KEY ("CATEGORY_CID")
	REFERENCES "SYSTEM"."CATEGORY" ("CID")
	ON DELETE RESTRICT
	ON UPDATE CASCADE;
--<ScriptOptions statementTerminator=";"/>

ALTER TABLE "SYSTEM"."CATEGORY" DROP CONSTRAINT "SYS_C007201";

DROP INDEX "SYSTEM"."SYS_C007201";

DROP TABLE "SYSTEM"."CATEGORY";

CREATE TABLE "SYSTEM"."CATEGORY" (
		"CID" NUMBER(19 , 0) NOT NULL,
		"DESCRIPTION" VARCHAR2(255),
		"TITLE" VARCHAR2(255)
	);

CREATE UNIQUE INDEX "SYSTEM"."SYS_C007201" ON "SYSTEM"."CATEGORY" ("CID" ASC);

ALTER TABLE "SYSTEM"."CATEGORY" ADD CONSTRAINT "SYS_C007201" PRIMARY KEY ("CID");

insert into "SYSTEM"."USERS" ("ID", "EMAIL", "ENABLED", "FIRST_NAME", "LAST_NAME", "PASSWORD", "PHONE", "USERNAME", "PROFILE") values(2,'james@gmail.com', 1, 'James', 'charles', 'James@123', '9342635436', 'james', 'Jam')

insert into "SYSTEM"."USERS" ("ID", "EMAIL", "ENABLED", "FIRST_NAME", "LAST_NAME", "PASSWORD", "PHONE", "USERNAME", "PROFILE") values(3, 'john@gmail.com', 1, 'John', 'wick', 'John@123', '9976243542', 'john', 'Johnwick')
