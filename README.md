# Espanolingo API!

## Contributors:
   -Christina Chapman
   -Krystle Noweski
   -Tomatau
   -Jonathan Lassen

## Motivation:

   Second capstone in Thinkful EI program.  Spaced Repetition Language app to build knowledge 
   on app building and data structures and algorithms. 

## Visit Espanolingo:

   * [Client Side Repo] : https://github.com/cmchapman75/Krystle_Cyra_Spaced_Rep_Client

   * [Live App] : https://espanolingo.now.sh/register

## Technologies: 
   
   **Front End Tech:** HTML, CSS,   JavaScript, React

**Back End Tech:** NodeJs, ExpressJs, PostgreSQL

**Testing Tech:** Jest, Supertest, Snapshot, Enzyme, Lodash, Mocha, Chai

## Local dev setup

If using user `dunder_mifflin`:

```bash
mv example.env .env
createdb -U dunder_mifflin spaced_petition
createdb -U dunder_mifflin spaced_repetition_test
```

If your `dunder_mifflin` user has a password be sure to set it in `.env` for all appropriate fields. Or if using a different user, update appropriately.

```bash
npm install
npm run migrate
env MIGRATION_DB_NAME=spaced_repetition_test npm run migrate
```

And `npm test` should work at this point

## Configuring Postgres

For tests involving time to run properly, configure your Postgres database to run in the UTC timezone.

1. Locate the `postgresql.conf` file for your Postgres installation.
   1. E.g. for an OS X, Homebrew install: `/usr/local/var/postgres/postgresql.conf`
   2. E.g. on Windows, _maybe_: `C:\Program Files\PostgreSQL\11.2\data\postgresql.conf`
   3. E.g  on Ubuntu 18.04 probably: '/etc/postgresql/10/main/postgresql.conf'
2. Find the `timezone` line and set it to `UTC`:

```conf
# - Locale and Formatting -

datestyle = 'iso, mdy'
#intervalstyle = 'postgres'
timezone = 'UTC'
#timezone_abbreviations = 'Default'     # Select the set of available time zone
```

## Scripts

Start the application `npm start`

Start nodemon for the application `npm run dev`

Run the tests mode `npm test`

Run the migrations up `npm run migrate`

Run the migrations down `npm run migrate -- 0`
