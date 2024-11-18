-- Create "users" table
CREATE TABLE "users" (
  "id" bigint NOT NULL,
  "name" character varying NOT NULL,
  PRIMARY KEY ("id")
);
-- Create "repos" table
CREATE TABLE "repos" (
  "id" bigint NOT NULL,
  "name" character varying NOT NULL,
  "owner_id" bigint NOT NULL,
  PRIMARY KEY ("id"),
  CONSTRAINT "owner_id" FOREIGN KEY ("owner_id") REFERENCES "users" ("id") ON UPDATE NO ACTION ON DELETE NO ACTION
);

