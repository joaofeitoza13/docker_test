CREATE TABLE "customers" (
  "customer_id" SERIAL PRIMARY KEY,
  "name" varchar(50) NOT NULL,
  "cpf" varchar(50) UNIQUE NOT NULL,
  "age" integer NOT NULL,
  "gender" varchar(50) NOT NULL,
  "profession" varchar(50),
  "phone" varchar(50) NOT NULL,
  "email" varchar(50),
  "birthday" timestamp NOT NULL,
  "created_at" timestamp NOT NULL,
  "updated_at" timestamp
);

CREATE TABLE "addresses" (
  "address_id" SERIAL PRIMARY KEY,
  "customer_id" integer NOT NULL,
  "street" varchar(50) NOT NULL,
  "number" integer,
  "neighborhood" varchar(50) NOT NULL,
  "zip_code" integer NOT NULL,
  "city" varchar(50) NOT NULL,
  "state" varchar(50) NOT NULL,
  "country" varchar(50) NOT NULL,
  "created_at" timestamp NOT NULL,
  "updated_at" timestamp
);

CREATE TABLE "appointments" (
  "appointment_id" SERIAL PRIMARY KEY,
  "customer_id" integer NOT NULL,
  "appointment_date" timestamp NOT NULL,
  "created_at" timestamp NOT NULL,
  "updated_at" timestamp
);

CREATE TABLE "body_compositions" (
  "body_composition_id" SERIAL PRIMARY KEY,
  "customer_id" integer UNIQUE NOT NULL,
  "height" integer NOT NULL,
  "age" integer NOT NULL,
  "weight" integer NOT NULL,
  "bmi" REAL NOT NULL,
  "muscle_percent" REAL NOT NULL,
  "fat_percent" REAL NOT NULL,
  "metabolism" REAL NOT NULL,
  "body_age" integer NOT NULL,
  "visceral_fat" REAL NOT NULL,
  "created_at" timestamp NOT NULL,
  "updated_at" timestamp
);

CREATE TABLE "sleep_types" (
  "sleep_types_id" SERIAL PRIMARY KEY,
  "sleep_type" varchar(50) NOT NULL
);

CREATE TABLE "substance_use_types" (
  "substance_use_types_id" SERIAL PRIMARY KEY,
  "substance_use_type" varchar(50) NOT NULL
);

CREATE TABLE "emotional_state_types" (
  "emotional_state_types_id" SERIAL PRIMARY KEY,
  "emotional_state_type" varchar(50) NOT NULL
);

CREATE TABLE "sun_exposure_types" (
  "sun_exposure_id" SERIAL PRIMARY KEY,
  "sun_exposure_type" varchar(50) NOT NULL
);

CREATE TABLE "habits" (
  "habit_id" SERIAL PRIMARY KEY,
  "customer_id" integer UNIQUE NOT NULL,
  "sleep_types_id" integer NOT NULL,
  "substance_use_types_id" integer NOT NULL,
  "emotional_state_types_id" integer NOT NULL,
  "sun_exposure_id" integer NOT NULL,
  "sunscreen" varchar(50) NOT NULL,
  "physical_activity" varchar(50) NOT NULL,
  "created_at" timestamp NOT NULL,
  "updated_at" timestamp
);

CREATE TABLE "diseases" (
  "disease_id" SERIAL PRIMARY KEY,
  "disease_name" varchar(50) NOT NULL,
  "updated_at" timestamp
);

CREATE TABLE "medical_histories" (
  "medical_history_id" SERIAL PRIMARY KEY,
  "customer_id" integer UNIQUE NOT NULL,
  "disease_id" integer NOT NULL,
  "medical_treatment" varchar(50) NOT NULL,
  "aesthetic_treatment" varchar(50) NOT NULL,
  "aesthetic_treatment_ongoing" varchar(50) NOT NULL,
  "cosmetics_in_use" varchar(50) NOT NULL,
  "medication_in_use" varchar(50) NOT NULL,
  "allergies" varchar(50) NOT NULL,
  "pacemaker_prosthesis" varchar(50) NOT NULL,
  "oncological" varchar(50) NOT NULL,
  "cardiac" varchar(50) NOT NULL,
  "epilepsy" boolean NOT NULL,
  "health_problems" integer NOT NULL,
  "intestines" boolean NOT NULL,
  "obesity" boolean NOT NULL,
  "surgery" varchar(50) NOT NULL,
  "family_history" varchar(50) NOT NULL,
  "keloid_propensity" boolean NOT NULL,
  "stretch_marks_propensity" boolean NOT NULL,
  "created_at" timestamp NOT NULL,
  "updated_at" timestamp
);

CREATE TABLE "contraceptives" (
  "contraceptive_id" SERIAL PRIMARY KEY,
  "contraceptive_name" VARCHAR(100) NOT NULL,
  "updated_at" timestamp
);

CREATE TABLE "women_related" (
  "women_related_id" SERIAL PRIMARY KEY,
  "customer_id" integer UNIQUE NOT NULL,
  "contraceptive_id" integer NOT NULL,
  "pregnancy" boolean NOT NULL,
  "puberty" boolean NOT NULL,
  "menopause" boolean NOT NULL,
  "hysterectomy" boolean NOT NULL,
  "pms" boolean NOT NULL,
  "quantity_pregnancy" integer NOT NULL,
  "breast_feeding" boolean NOT NULL,
  "contraceptive_methods" varchar(200) NOT NULL,
  "last_menstruation" timestamp NOT NULL,
  "hormone_replacement" boolean NOT NULL,
  "created_at" timestamp NOT NULL,
  "updated_at" timestamp
);

CREATE TABLE "corporal_areas" (
  "corporal_area_id" SERIAL PRIMARY KEY,
  "corporal_area" varchar(50) UNIQUE NOT NULL,
  "updated_at" timestamp
);

CREATE TABLE "procedures" (
  "procedure_id" SERIAL PRIMARY KEY,
  "appointment_id" integer NOT NULL,
  "procedure_name_id" integer NOT NULL,
  "corporal_area_id" integer NOT NULL,
  "actual_session" integer NOT NULL,
  "total_sessions" integer NOT NULL,
  "signature" BYTEA NOT NULL,
  "created_at" timestamp NOT NULL,
  "updated_at" timestamp
);

CREATE TABLE "procedure_names" (
  "procedure_name_id" SERIAL PRIMARY KEY,
  "procedure_name" varchar(75) NOT NULL,
  "updated_at" timestamp
);

ALTER TABLE "addresses" ADD CONSTRAINT "fk_customer" FOREIGN KEY ("customer_id") REFERENCES "customers" ("customer_id");

ALTER TABLE "appointments" ADD CONSTRAINT "fk_customer" FOREIGN KEY ("customer_id") REFERENCES "customers" ("customer_id");

ALTER TABLE "body_compositions" ADD CONSTRAINT "fk_customer" FOREIGN KEY ("customer_id") REFERENCES "customers" ("customer_id");

ALTER TABLE "habits" ADD CONSTRAINT "fk_customer" FOREIGN KEY ("customer_id") REFERENCES "customers" ("customer_id");

ALTER TABLE "habits" ADD CONSTRAINT "fk_sleep_types" FOREIGN KEY ("sleep_types_id") REFERENCES "sleep_types" ("sleep_types_id");

ALTER TABLE "habits" ADD CONSTRAINT "fk_substance_use_types" FOREIGN KEY ("substance_use_types_id") REFERENCES "substance_use_types" ("substance_use_types_id");

ALTER TABLE "habits" ADD CONSTRAINT "fk_emotional_state_types" FOREIGN KEY ("emotional_state_types_id") REFERENCES "emotional_state_types" ("emotional_state_types_id");

ALTER TABLE "habits" ADD CONSTRAINT "fk_sun_exposure" FOREIGN KEY ("sun_exposure_id") REFERENCES "sun_exposure_types" ("sun_exposure_id");

ALTER TABLE "medical_histories" ADD CONSTRAINT "fk_customer" FOREIGN KEY ("customer_id") REFERENCES "customers" ("customer_id");

ALTER TABLE "medical_histories" ADD CONSTRAINT "fk_disease" FOREIGN KEY ("disease_id") REFERENCES "diseases" ("disease_id");

ALTER TABLE "women_related" ADD CONSTRAINT "fk_customer" FOREIGN KEY ("customer_id") REFERENCES "customers" ("customer_id");

ALTER TABLE "women_related" ADD CONSTRAINT "fk_contraceptive" FOREIGN KEY ("contraceptive_id") REFERENCES "contraceptives" ("contraceptive_id");

ALTER TABLE "procedures" ADD CONSTRAINT "fk_appointment" FOREIGN KEY ("appointment_id") REFERENCES "appointments" ("appointment_id");

ALTER TABLE "procedures" ADD CONSTRAINT "fk_procedure_name" FOREIGN KEY ("procedure_name_id") REFERENCES "procedure_names" ("procedure_name_id");

ALTER TABLE "procedures" ADD CONSTRAINT "fk_corporal_area" FOREIGN KEY ("corporal_area_id") REFERENCES "corporal_areas" ("corporal_area_id");
