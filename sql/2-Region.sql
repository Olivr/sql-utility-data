-- Set default schema to use for the following queries
SET search_path TO "utility";

DROP TABLE IF EXISTS "region";

CREATE TABLE "region" (
  "id" char(3) NOT NULL PRIMARY KEY,
  "name" varchar(100) NOT NULL,
  "parent_id" char(3),
  "created_at" timestamptz NOT NULL DEFAULT NOW(),
  "updated_at" timestamptz NOT NULL DEFAULT NOW(),
  CONSTRAINT region_parent_fk FOREIGN KEY (parent_id) REFERENCES region(id) ON UPDATE RESTRICT ON DELETE RESTRICT
);

-- https://en.wikipedia.org/wiki/UN_M49
COMMENT ON COLUMN region.id IS 'UN M49';

CREATE TRIGGER set_region_updated_at before
UPDATE ON "region" FOR each ROW EXECUTE PROCEDURE set_current_timestamp_updated_at();

INSERT INTO region ("id", "name", "parent_id")
VALUES ('001', 'World', NULL),
  ('002', 'Africa', '001'),
  ('019', 'Americas', '001'),
  ('142', 'Asia', '001'),
  ('150', 'Europe', '001'),
  ('009', 'Oceania', '001'),
  ('010', 'Antarctica', '001'),
  ('015', 'Northern Africa', '002'),
  ('202', 'Sub-Saharan Africa', '002'),
  ('014', 'Eastern Africa', '202'),
  ('017', 'Middle Africa', '202'),
  ('018', 'Southern Africa', '202'),
  ('011', 'Western Africa', '202'),
  ('419', 'Latin America and the Caribbean', '019'),
  ('029', 'Caribbean', '419'),
  ('013', 'Central America', '419'),
  ('005', 'South America', '419'),
  ('021', 'Northern America', '019'),
  ('143', 'Central Asia', '142'),
  ('030', 'Eastern Asia', '142'),
  ('035', 'South-eastern Asia', '142'),
  ('034', 'Southern Asia', '142'),
  ('145', 'Western Asia', '142'),
  ('151', 'Eastern Europe', '150'),
  ('154', 'Northern Europe', '150'),
  ('039', 'Southern Europe', '150'),
  ('155', 'Western Europe', '150'),
  ('830', 'Channel Islands', '154'),
  ('053', 'Australia and New Zealand', '009'),
  ('054', 'Melanesia', '009'),
  ('057', 'Micronesia', '009'),
  ('061', 'Polynesia', '009');