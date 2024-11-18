-- Modify "repos" table
ALTER TABLE "repos" ADD COLUMN "description" character varying NULL;
-- Create "commits" table
CREATE TABLE "commits" (
  "id" bigint NOT NULL,
  "message" character varying NOT NULL,
  "repo_id" bigint NOT NULL,
  "author_id" bigint NOT NULL,
  PRIMARY KEY ("id"),
  CONSTRAINT "author_id" FOREIGN KEY ("author_id") REFERENCES "users" ("id") ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT "repo_id" FOREIGN KEY ("repo_id") REFERENCES "repos" ("id") ON UPDATE NO ACTION ON DELETE NO ACTION
);

