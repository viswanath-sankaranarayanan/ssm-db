-- DROP SCHEMA ssm;

CREATE SCHEMA IF NOT EXISTS ssm AUTHORIZATION postgres;

--CREATE TABLE IF NOT EXISTSs
-- ssm.code_master definition

-- Drop table

-- DROP TABLE ssm.code_master;

CREATE TABLE IF NOT EXISTS ssm.code_master (
	code_master_id int8 NOT NULL DEFAULT nextval('ssm.code_master_id_seq'::regclass),
	code_value varchar NOT NULL,
	code_description varchar NOT NULL,
	code_type varchar NULL,
	is_active bool NOT NULL DEFAULT true,
	created_by varchar NOT NULL,
	created_date timestamp NOT NULL,
	modified_by varchar NULL,
	modified_date timestamp NULL,
	CONSTRAINT code_master_pk PRIMARY KEY (code_master_id)
);


-- ssm.contact_detail definition

-- Drop table

-- DROP TABLE ssm.contact_detail;

CREATE TABLE IF NOT EXISTS ssm.contact_detail (
	contact_detail_id int8 NOT NULL DEFAULT nextval('ssm.contact_detail_id_seq'::regclass),
	address1 varchar(100) NOT NULL,
	address2 varchar(100) NULL,
	city varchar(50) NOT NULL,
	state_code varchar(3) NOT NULL,
	country_code varchar(2) NOT NULL,
	phone_number varchar(20) NOT NULL,
	alt_phone_number varchar(20) NULL,
	email_id varchar(100) NOT NULL,
	created_by varchar(100) NOT NULL,
	created_date timestamp NOT NULL,
	modified_by varchar(100) NULL,
	modified_date timestamp NULL,
	is_active bool NOT NULL DEFAULT true,
	CONSTRAINT contact_detail_pk PRIMARY KEY (contact_detail_id)
);


-- ssm.holidays definition

-- Drop table

-- DROP TABLE ssm.holidays;

CREATE TABLE IF NOT EXISTS ssm.holidays (
	holiday_id int8 NOT NULL DEFAULT nextval('ssm.holiday_id_seq'::regclass),
	holiday_year varchar NOT NULL,
	holiday_date date NULL,
	holiday_type int4 NOT NULL,
	created_by varchar(55) NULL,
	created_date timestamp NOT NULL,
	modified_by varchar(55) NULL,
	modified_date timestamp NULL,
	is_active bool NULL DEFAULT true,
	CONSTRAINT holidays_pk PRIMARY KEY (holiday_id)
);


-- ssm.login_detail definition

-- Drop table

-- DROP TABLE ssm.login_detail;

CREATE TABLE IF NOT EXISTS ssm.login_detail (
	login_detail_id int8 NOT NULL DEFAULT nextval('ssm.login_detail_id_seq'::regclass),
	login_user_id varchar NOT NULL,
	user_id int8 NOT NULL,
	login_password varchar NULL,
	is_active bool NOT NULL DEFAULT true,
	created_by varchar NOT NULL,
	created_date timestamp NOT NULL,
	modified_by varchar NULL,
	modified_date timestamp NULL,
	roll_id int8 NOT NULL,
	CONSTRAINT login_user_manager_pk PRIMARY KEY (login_detail_id)
);


-- ssm.material_information definition

-- Drop table

-- DROP TABLE ssm.material_information;

CREATE TABLE IF NOT EXISTS ssm.material_information (
	material_info_id int8 NOT NULL DEFAULT nextval('ssm.material_info_id_seq'::regclass),
	material_id varchar(10) NOT NULL,
	material_type int4 NOT NULL,
	created_by varchar(55) NOT NULL,
	created_date timestamp NOT NULL,
	modified_by varchar(55) NULL,
	modified_date timestamp NULL,
	is_active bool NOT NULL DEFAULT true,
	CONSTRAINT material_info_pk PRIMARY KEY (material_info_id)
);


-- ssm.menu_detail definition

-- Drop table

-- DROP TABLE ssm.menu_detail;

CREATE TABLE IF NOT EXISTS ssm.menu_detail (
	menu_id int8 NOT NULL DEFAULT nextval('ssm.menu_detail_id_seq'::regclass),
	menu_name varchar(50) NOT NULL,
	is_active bool NOT NULL DEFAULT true,
	created_by varchar(50) NOT NULL,
	created_date timestamp NOT NULL,
	modified_by varchar(50) NULL,
	modified_date timestamp NULL,
	content_name varchar(50) NULL,
	CONSTRAINT menu_detail_pk PRIMARY KEY (menu_id)
);


-- ssm.menu_role_mapping definition

-- Drop table

-- DROP TABLE ssm.menu_role_mapping;

CREATE TABLE IF NOT EXISTS ssm.menu_role_mapping (
	menu_role_map_id int8 NOT NULL DEFAULT nextval('ssm.menu_role_map_id_seq'::regclass),
	menu_id int8 NOT NULL,
	role_id int8 NOT NULL,
	is_active bool NOT NULL DEFAULT true,
	created_by varchar(50) NOT NULL,
	created_date timestamp NOT NULL,
	modified_by varchar(50) NULL,
	modified_date timestamp NULL,
	CONSTRAINT menu_role_mapping_pk PRIMARY KEY (menu_role_map_id)
);


-- ssm.personal_information definition

-- Drop table

-- DROP TABLE ssm.personal_information;

CREATE TABLE IF NOT EXISTS ssm.personal_information (
	personal_info_id int8 NOT NULL DEFAULT nextval('ssm.personal_info_id_seq'::regclass),
	person_type_id int8 NOT NULL,
	father_first_name varchar(55) NULL,
	father_middle_name varchar(55) NULL,
	father_last_name varchar(55) NULL,
	mother_first_name varchar(55) NULL,
	mother_middle_name varchar(55) NULL,
	mother_last_name varchar(55) NULL,
	gardian_first_name varchar(55) NULL,
	gardian_middle_name varchar(55) NULL,
	gardian_last_name varchar(55) NULL,
	gardian_type varchar(55) NULL,
	created_by varchar(55) NOT NULL,
	created_date timestamp NOT NULL,
	modified_by varchar(55) NULL,
	modified_date timestamp NULL,
	is_active bool NOT NULL DEFAULT true,
	CONSTRAINT student_details_pk PRIMARY KEY (personal_info_id)
);


-- ssm.role_detail definition

-- Drop table

-- DROP TABLE ssm.role_detail;

CREATE TABLE IF NOT EXISTS ssm.role_detail (
	role_id int8 NOT NULL DEFAULT nextval('ssm.role_detail_id_seq'::regclass),
	role_name varchar(50) NOT NULL,
	is_active bool NOT NULL DEFAULT true,
	created_by varchar(50) NOT NULL,
	created_date timestamp NOT NULL,
	modified_by varchar(50) NULL,
	modified_date timestamp NULL,
	CONSTRAINT role_detail_pk PRIMARY KEY (role_id)
);


-- ssm.room_information definition

-- Drop table

-- DROP TABLE ssm.room_information;

CREATE TABLE IF NOT EXISTS ssm.room_information (
	room_info_id int8 NOT NULL DEFAULT nextval('ssm.room_info_id_seq'::regclass),
	room_number varchar(10) NOT NULL,
	room_type int4 NOT NULL,
	created_by varchar(55) NOT NULL,
	created_date timestamp NOT NULL,
	modified_by varchar(55) NULL,
	modified_date timestamp NULL,
	is_active bool NOT NULL DEFAULT true,
	CONSTRAINT room_info_pk PRIMARY KEY (room_info_id)
);


-- ssm.staff_information definition

-- Drop table

-- DROP TABLE ssm.staff_information;

CREATE TABLE IF NOT EXISTS ssm.staff_information (
	staff_info_id int8 NOT NULL DEFAULT nextval('ssm.staff_info_id_seq'::regclass),
	staff_id varchar(10) NOT NULL,
	staff_type int4 NOT NULL,
	staff_first_name varchar(55) NOT NULL,
	staff_middle_name varchar(55) NULL,
	staff_last_name varchar(55) NULL,
	staff_phone_number varchar(14) NOT NULL,
	staff_email_id varchar(55) NOT NULL,
	personal_info_id int8 NOT NULL,
	created_by varchar(55) NOT NULL,
	created_date timestamp NOT NULL,
	modified_by varchar(55) NULL,
	modified_date timestamp NULL,
	is_active bool NOT NULL DEFAULT true,
	contact_detail_id int8 NOT NULL,
	gender varchar(1) NULL,
	dob date NULL,
	blood_group varchar(3) NULL,
	CONSTRAINT staff_info_pk PRIMARY KEY (staff_info_id)
);


-- ssm.standard_subject_mapping definition

-- Drop table

-- DROP TABLE ssm.standard_subject_mapping;

CREATE TABLE IF NOT EXISTS ssm.standard_subject_mapping (
	ss_mapping_id int8 NOT NULL DEFAULT nextval('ssm.ss_mapping_id_seq'::regclass),
	standard_id int8 NOT NULL,
	subject_id int8 NOT NULL,
	is_active bool NOT NULL DEFAULT true,
	created_by varchar(55) NOT NULL,
	created_date timestamp NULL,
	modified_by varchar(55) NULL,
	modified_date timestamp NULL
);


-- ssm.student_attendance definition

-- Drop table

-- DROP TABLE ssm.student_attendance;

CREATE TABLE IF NOT EXISTS ssm.student_attendance (
	st_attendance_id int8 NOT NULL DEFAULT nextval('ssm.st_attendance_id_seq'::regclass),
	student_id int8 NOT NULL,
	tutor_id int8 NOT NULL,
	is_present bool NOT NULL DEFAULT false,
	attendance_date timestamp NOT NULL,
	CONSTRAINT student_attendance_pk PRIMARY KEY (st_attendance_id)
);


-- ssm.student_information definition

-- Drop table

-- DROP TABLE ssm.student_information;

CREATE TABLE IF NOT EXISTS ssm.student_information (
	student_info_id int8 NOT NULL DEFAULT nextval('ssm.student_info_id_seq'::regclass),
	student_roll_number varchar(15) NOT NULL,
	student_first_name varchar(55) NOT NULL,
	student_middle_name varchar(55) NULL,
	student_last_name varchar(55) NULL,
	personal_info_id int8 NOT NULL,
	created_by varchar(55) NOT NULL,
	created_date timestamp NOT NULL,
	modified_by varchar(55) NULL,
	modified_date timestamp NULL,
	is_active bool NOT NULL DEFAULT true,
	gender varchar(1) NOT NULL,
	dob date NOT NULL,
	blood_group varchar NULL,
	contact_detail_id int8 NOT NULL,
	CONSTRAINT student_info_pk PRIMARY KEY (student_info_id)
);


-- ssm.student_mapping definition

-- Drop table

-- DROP TABLE ssm.student_mapping;

CREATE TABLE IF NOT EXISTS ssm.student_mapping (
	student_mapping_id int8 NOT NULL DEFAULT nextval('ssm.student_mapping_id_seq'::regclass),
	student_id int8 NOT NULL,
	batch_id int4 NOT NULL,
	section_id int4 NULL,
	class_room_id int8 NULL,
	tutor_id int8 NULL,
	is_class_tutor bool NULL,
	subject_id int4 NOT NULL,
	batch_year int4 NULL,
	created_by varchar(55) NOT NULL,
	created_date timestamp NOT NULL,
	modified_by varchar(55) NULL,
	modified_date timestamp NULL,
	is_active bool NOT NULL DEFAULT true,
	CONSTRAINT student_mapping_pk PRIMARY KEY (student_mapping_id)
);


-- ssm.tutor_subject_mapping definition

-- Drop table

-- DROP TABLE ssm.tutor_subject_mapping;

CREATE TABLE IF NOT EXISTS ssm.tutor_subject_mapping (
	ts_mapping_id int8 NOT NULL DEFAULT nextval('ssm.ts_mapping_id_seq'::regclass),
	tutor_id int8 NULL,
	subject_id int4 NOT NULL,
	is_master bool NULL,
	created_by varchar(55) NOT NULL,
	created_date timestamp NOT NULL,
	modified_by varchar(55) NULL,
	modified_date timestamp NULL,
	is_active bool NOT NULL DEFAULT true,
	CONSTRAINT student_tutor_class_room_mapping_pk PRIMARY KEY (ts_mapping_id)
);

--Sequences
-- ssm.attendance_detail_id_seq definition

-- DROP SEQUENCE ssm.attendance_detail_id_seq;

CREATE SEQUENCE IF NOT EXISTS ssm.attendance_detail_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ssm.code_master_id_seq definition

-- DROP SEQUENCE ssm.code_master_id_seq;

CREATE SEQUENCE IF NOT EXISTS ssm.code_master_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ssm.contact_detail_id_seq definition

-- DROP SEQUENCE ssm.contact_detail_id_seq;

CREATE SEQUENCE IF NOT EXISTS ssm.contact_detail_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ssm.contact_id_seq definition

-- DROP SEQUENCE ssm.contact_id_seq;

CREATE SEQUENCE IF NOT EXISTS ssm.contact_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ssm.grade_detail_id_seq definition

-- DROP SEQUENCE ssm.grade_detail_id_seq;

CREATE SEQUENCE IF NOT EXISTS ssm.grade_detail_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ssm.guardian_id_seq definition

-- DROP SEQUENCE ssm.guardian_id_seq;

CREATE SEQUENCE IF NOT EXISTS ssm.guardian_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ssm.holiday_id_seq definition

-- DROP SEQUENCE ssm.holiday_id_seq;

CREATE SEQUENCE IF NOT EXISTS ssm.holiday_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ssm.login_detail_id_seq definition

-- DROP SEQUENCE ssm.login_detail_id_seq;

CREATE SEQUENCE IF NOT EXISTS ssm.login_detail_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ssm.master_code_id_seq definition

-- DROP SEQUENCE ssm.master_code_id_seq;

CREATE SEQUENCE IF NOT EXISTS ssm.master_code_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ssm.material_info_id_seq definition

-- DROP SEQUENCE ssm.material_info_id_seq;

CREATE SEQUENCE IF NOT EXISTS ssm.material_info_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ssm.menu_detail_id_seq definition

-- DROP SEQUENCE ssm.menu_detail_id_seq;

CREATE SEQUENCE IF NOT EXISTS ssm.menu_detail_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ssm.menu_role_map_id_seq definition

-- DROP SEQUENCE ssm.menu_role_map_id_seq;

CREATE SEQUENCE IF NOT EXISTS ssm.menu_role_map_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ssm.personal_info_id_seq definition

-- DROP SEQUENCE ssm.personal_info_id_seq;

CREATE SEQUENCE IF NOT EXISTS ssm.personal_info_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ssm.resource_id_seq definition

-- DROP SEQUENCE ssm.resource_id_seq;

CREATE SEQUENCE IF NOT EXISTS ssm.resource_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ssm.role_detail_id_seq definition

-- DROP SEQUENCE ssm.role_detail_id_seq;

CREATE SEQUENCE IF NOT EXISTS ssm.role_detail_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ssm.room_info_id_seq definition

-- DROP SEQUENCE ssm.room_info_id_seq;

CREATE SEQUENCE IF NOT EXISTS ssm.room_info_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ssm.ss_mapping_id_seq definition

-- DROP SEQUENCE ssm.ss_mapping_id_seq;

CREATE SEQUENCE IF NOT EXISTS ssm.ss_mapping_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ssm.st_attendance_id_seq definition

-- DROP SEQUENCE ssm.st_attendance_id_seq;

CREATE SEQUENCE IF NOT EXISTS ssm.st_attendance_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ssm.staff_info_id_seq definition

-- DROP SEQUENCE ssm.staff_info_id_seq;

CREATE SEQUENCE IF NOT EXISTS ssm.staff_info_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ssm.student_id_seq definition

-- DROP SEQUENCE ssm.student_id_seq;

CREATE SEQUENCE IF NOT EXISTS ssm.student_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ssm.student_info_id_seq definition

-- DROP SEQUENCE ssm.student_info_id_seq;

CREATE SEQUENCE IF NOT EXISTS ssm.student_info_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ssm.student_mapping_id_seq definition

-- DROP SEQUENCE ssm.student_mapping_id_seq;

CREATE SEQUENCE IF NOT EXISTS ssm.student_mapping_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ssm.student_parent_map_id_seq definition

-- DROP SEQUENCE ssm.student_parent_map_id_seq;

CREATE SEQUENCE IF NOT EXISTS ssm.student_parent_map_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ssm.student_tutor_map_id_seq definition

-- DROP SEQUENCE ssm.student_tutor_map_id_seq;

CREATE SEQUENCE IF NOT EXISTS ssm.student_tutor_map_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ssm.ts_mapping_id_seq definition

-- DROP SEQUENCE ssm.ts_mapping_id_seq;

CREATE SEQUENCE IF NOT EXISTS ssm.ts_mapping_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ssm.version_id_seq definition

-- DROP SEQUENCE ssm.version_id_seq;

CREATE SEQUENCE IF NOT EXISTS ssm.version_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;