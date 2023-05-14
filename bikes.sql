DROP TABLE IF EXISTS "public"."bikes";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS bikes_bike_id_seq;

-- Table Definition
CREATE TABLE "public"."bikes" (
    "bike_id" int4 NOT NULL DEFAULT nextval('bikes_bike_id_seq'::regclass),
    "type" varchar(50),
    "size" int4,
    "available" bool NOT NULL DEFAULT true,
    PRIMARY KEY ("bike_id")
);

INSERT INTO "public"."bikes" ("bike_id", "type", "size", "available") VALUES
(1, 'Mountain', 27, 't');
INSERT INTO "public"."bikes" ("bike_id", "type", "size", "available") VALUES
(2, 'Mountain', 28, 't');
INSERT INTO "public"."bikes" ("bike_id", "type", "size", "available") VALUES
(3, 'Mountain', 29, 't');
INSERT INTO "public"."bikes" ("bike_id", "type", "size", "available") VALUES
(4, 'Road', 27, 't'),
(5, 'Road', 28, 't'),
(6, 'Road', 29, 't'),
(7, 'BMX', 19, 't'),
(8, 'BMX', 20, 't'),
(9, 'BMX', 21, 't');