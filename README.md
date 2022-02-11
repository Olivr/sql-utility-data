# SQL Utility Data

This is a clean relational data set for __regions__ ([UN
M49](https://en.wikipedia.org/wiki/UN_M49)), __countries__ ([ISO
3166-1](https://en.wikipedia.org/wiki/ISO_3166-1), [UN
M49](https://en.wikipedia.org/wiki/UN_M49)), __languages__ ([ISO
639-1](https://en.wikipedia.org/wiki/ISO_639-1)) and __currencies__ ([ISO 4217](https://en.wikipedia.org/wiki/ISO_4217)) to be used in your project.

> Tested with PostgreSQL 14

## Why use this one over other data sets available on GitHub?

- Up to date as of the date of the last commit
- Manually checked for errors
- Relational mappings
- PostgreSQL compatibility
- Supports countries with multiple currencies

## Import it

```sh
psql postgres --file=sql/1-init-schema.sql
psql postgres --file=sql/2-Region.sql
psql postgres --file=sql/3-Country.sql
psql postgres --file=sql/4-Currency.sql
psql postgres --file=sql/5-CountryCurrency.sql
psql postgres --file=sql/6-Language.sql
psql postgres --file=sql/7-CountryLanguage.sql
```

## Examples

All countries with their respective region

```sql
SELECT c.*,
       r.name AS region_name
FROM   utility.country c
       INNER JOIN utility.region r
               ON ( c.region_id = r.id );
```

All official languages of South Africa

```sql
SELECT *
FROM   utility.country_language cl
       INNER JOIN utility.language l
               ON ( cl.language_id = l.id )
WHERE  cl.country_id = 'ZA';
```

All countries with French as an official language

```sql
SELECT *
FROM   utility.country_language cl
       INNER JOIN utility.country c
               ON ( cl.country_id = c.id )
WHERE  cl.language_id = 'fr';
```

All official currencies of Panama

```sql
SELECT *
FROM   utility.country_currency cc
       INNER JOIN utility.currency c
               ON ( cc.currency_id = c.id )
WHERE  cc.country_id = 'PA'  
```
