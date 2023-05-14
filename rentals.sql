DROP TABLE IF EXISTS "public"."rentals";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS rentals_rental_id_seq;

-- Table Definition
CREATE TABLE "public"."rentals" (
    "rental_id" int4 NOT NULL DEFAULT nextval('rentals_rental_id_seq'::regclass),
    "customer_id" int4 NOT NULL,
    "bike_id" int4 NOT NULL,
    "date_returned" date,
    "date_rented" date NOT NULL DEFAULT now(),
    CONSTRAINT "rentals_customer_id_fkey" FOREIGN KEY ("customer_id") REFERENCES "public"."customers"("customer_id"),
    CONSTRAINT "rentals_bike_id_fkey" FOREIGN KEY ("bike_id") REFERENCES "public"."bikes"("bike_id"),
    PRIMARY KEY ("rental_id")
);

INSERT INTO "public"."rentals" ("rental_id", "customer_id", "bike_id", "date_returned", "date_rented") VALUES
(1, 1, 1, '2021-05-25', '2021-05-27');
INSERT INTO "public"."rentals" ("rental_id", "customer_id", "bike_id", "date_returned", "date_rented") VALUES
(2, 1, 2, '2021-05-25', '2023-05-13');
INSERT INTO "public"."rentals" ("rental_id", "customer_id", "bike_id", "date_returned", "date_rented") VALUES
(3, 1, 3, '2021-05-27', '2023-05-13');
INSERT INTO "public"."rentals" ("rental_id", "customer_id", "bike_id", "date_returned", "date_rented") VALUES
(4, 1, 4, '2021-05-27', '2023-05-13'),
(5, 1, 5, '2021-05-27', '2023-05-13'),
(6, 2, 6, '2021-05-27', '2023-05-13'),
(7, 2, 7, '2021-05-27', '2023-05-13');