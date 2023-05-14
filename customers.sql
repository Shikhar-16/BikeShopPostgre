DROP TABLE IF EXISTS "public"."customers";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS customers_customer_id_seq;

-- Table Definition
CREATE TABLE "public"."customers" (
    "customer_id" int4 NOT NULL DEFAULT nextval('customers_customer_id_seq'::regclass),
    "phone" varchar(15) NOT NULL,
    "name" varchar(40) NOT NULL,
    PRIMARY KEY ("customer_id")
);

INSERT INTO "public"."customers" ("customer_id", "phone", "name") VALUES
(1, '555-5555', 'Me');
INSERT INTO "public"."customers" ("customer_id", "phone", "name") VALUES
(2, '000-0000', 'Test');
