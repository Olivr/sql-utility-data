-- Set default schema to use for the following queries
SET search_path TO "utility";

DROP TABLE IF EXISTS "country_currency";

CREATE TABLE "country_currency" (
    "country_id" char(2) NOT NULL,
    "currency_id" char(3) NOT NULL,
    "created_at" timestamptz NOT NULL DEFAULT NOW(),
    "updated_at" timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT country_currency_pkey PRIMARY KEY (country_id, currency_id),
    CONSTRAINT country_currency_country_fkey FOREIGN KEY (country_id) REFERENCES "country"(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
    CONSTRAINT country_currency_currency_fkey FOREIGN KEY (currency_id) REFERENCES "currency"(id) ON DELETE RESTRICT ON UPDATE RESTRICT
);

-- https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2
COMMENT ON COLUMN country_currency.country_id IS 'ISO 3166-1 alpha-2';

-- https://en.wikipedia.org/wiki/ISO_4217
COMMENT ON COLUMN country_currency.currency_id IS 'ISO 4217';

CREATE TRIGGER "set_country_currency_updated_at" before
UPDATE ON "country_currency" FOR each ROW EXECUTE PROCEDURE set_current_timestamp_updated_at();

INSERT INTO "country_currency" (
        "country_id",
        "currency_id",
        "created_at",
        "updated_at"
    )
VALUES (
        'OM',
        'OMR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'AO',
        'AOA',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'CW',
        'ANG',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'BV',
        'NOK',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'GM',
        'GMD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'LV',
        'EUR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'MC',
        'EUR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'PT',
        'EUR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'VA',
        'EUR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'NU',
        'NZD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'SH',
        'SHP',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'BI',
        'BIF',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'KN',
        'XCD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'LC',
        'XCD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'TZ',
        'TZS',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'PM',
        'EUR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'SS',
        'SSP',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'VC',
        'XCD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'BL',
        'EUR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'AD',
        'EUR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'PR',
        'USD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'SG',
        'SGD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'SK',
        'EUR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'GP',
        'EUR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'GE',
        'GEL',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'HM',
        'AUD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'CA',
        'CAD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'GS',
        'GBP',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'SR',
        'SRD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'SJ',
        'NOK',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'GY',
        'GYD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'GB',
        'GBP',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'LU',
        'EUR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'RO',
        'RON',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'SL',
        'SLL',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'SX',
        'ANG',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'AT',
        'EUR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'MS',
        'XCD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'FM',
        'USD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'IT',
        'EUR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'UM',
        'USD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'UY',
        'UYU',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'UZ',
        'UZS',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'IO',
        'USD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'GU',
        'USD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'AQ',
        'AAD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'AG',
        'XCD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'TL',
        'USD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'GN',
        'GNF',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'IL',
        'ILS',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'BY',
        'BYN',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'PW',
        'USD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'LS',
        'LSL',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'LS',
        'ZAR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'VU',
        'VUV',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'VE',
        'VEF',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'AW',
        'AWG',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'AZ',
        'AZN',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'KZ',
        'KZT',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'KR',
        'KRW',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'LI',
        'CHF',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'FI',
        'EUR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'GR',
        'EUR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'LR',
        'LRD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'LY',
        'LYD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'SZ',
        'SZL',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'SY',
        'SYP',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'TO',
        'TOP',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'RU',
        'RUB',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'BM',
        'BMD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'BO',
        'BOB',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'TW',
        'TWD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'JE',
        'GBP',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'JO',
        'JOD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'CU',
        'CUP',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'GQ',
        'XAF',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'FO',
        'DKK',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'CN',
        'CNY',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'IM',
        'GBP',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'AS',
        'USD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'PN',
        'NZD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'PL',
        'PLN',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'MX',
        'MXN',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'MN',
        'MNT',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'MZ',
        'MZN',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'MM',
        'MMK',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'NA',
        'NAD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'NA',
        'ZAR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'NC',
        'XPF',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'RE',
        'EUR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'MD',
        'MDL',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'SA',
        'SAR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'MF',
        'EUR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'ST',
        'STD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'SC',
        'SCR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'HT',
        'HTG',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'HT',
        'USD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'SI',
        'EUR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'SB',
        'SBD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'SO',
        'SOS',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'TK',
        'NZD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'EC',
        'USD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'CG',
        'XAF',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'CI',
        'XOF',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'HR',
        'HRK',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'VI',
        'USD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'BF',
        'XOF',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'DE',
        'EUR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'GI',
        'GIP',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'KH',
        'KHR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'MH',
        'USD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'CO',
        'COP',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'CF',
        'XAF',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'TD',
        'XAF',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'KM',
        'KMF',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'IS',
        'ISK',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'DO',
        'DOP',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'TJ',
        'TJS',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'PE',
        'PEN',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'FR',
        'EUR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'ER',
        'ERN',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'EE',
        'EUR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'WS',
        'WST',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'ET',
        'ETB',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'FK',
        'FKP',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'HN',
        'HNL',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'PF',
        'XPF',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'TF',
        'EUR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'PS',
        'ILS',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'BQ',
        'USD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'NL',
        'EUR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'NE',
        'XOF',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'KE',
        'KES',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'YE',
        'YER',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'MO',
        'MOP',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'ME',
        'EUR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'KW',
        'KWD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'KI',
        'AUD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'CR',
        'CRC',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'TT',
        'TTD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'TN',
        'TND',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'SE',
        'SEK',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'CH',
        'CHF',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'WF',
        'XPF',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'AX',
        'EUR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'GW',
        'XOF',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'BT',
        'BTN',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'BT',
        'INR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'MT',
        'EUR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'US',
        'USD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'BN',
        'BND',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'BG',
        'BGN',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'VN',
        'VND',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'NP',
        'NPR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'MW',
        'MWK',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'MU',
        'MUR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'KP',
        'KPW',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'JM',
        'JMD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'SN',
        'XOF',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'MK',
        'MKD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'IR',
        'IRR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'MY',
        'MYR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'MV',
        'MVR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'MR',
        'MRO',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'EG',
        'EGP',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'BD',
        'BDT',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'BA',
        'BAM',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'BW',
        'BWP',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'BR',
        'BRL',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'TH',
        'THB',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'LA',
        'LAK',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'RW',
        'RWF',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'CY',
        'EUR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'CL',
        'CLP',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'AM',
        'AMD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'IN',
        'INR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'NG',
        'NGN',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'CD',
        'CDF',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'EH',
        'MAD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'ZW',
        'ZWL',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'AF',
        'AFN',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'BE',
        'EUR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'BZ',
        'BZD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'HU',
        'HUF',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'YT',
        'EUR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'SD',
        'SDG',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'CC',
        'AUD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'LB',
        'LBP',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'PG',
        'PGK',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'PY',
        'PYG',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'PH',
        'PHP',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'NF',
        'AUD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'MP',
        'USD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'PK',
        'PKR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'SM',
        'EUR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'PA',
        'PAB',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'PA',
        'USD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'ZA',
        'ZAR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'QA',
        'QAR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'CX',
        'AUD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'LK',
        'LKR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'UA',
        'UAH',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'XK',
        'EUR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'DJ',
        'DJF',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'JP',
        'JPY',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'TG',
        'XOF',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'AR',
        'ARS',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'CZ',
        'CZK',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'DK',
        'DKK',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'DM',
        'XCD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'KG',
        'KGS',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'CM',
        'XAF',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'LT',
        'EUR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'SV',
        'USD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'CV',
        'CVE',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'KY',
        'KYD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'MQ',
        'EUR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'FJ',
        'FJD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'NZ',
        'NZD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'NI',
        'NIO',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'GD',
        'XCD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'GF',
        'EUR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'TR',
        'TRY',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'ID',
        'IDR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'RS',
        'RSD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'TC',
        'USD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'MA',
        'MAD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'AE',
        'AED',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'BJ',
        'XOF',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'IQ',
        'IQD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'IE',
        'EUR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'GL',
        'DKK',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'GT',
        'GTQ',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'GG',
        'GBP',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'HK',
        'HKD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'GH',
        'GHS',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'TM',
        'TMT',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'NR',
        'AUD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'BH',
        'BHD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'AI',
        'XCD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'CK',
        'NZD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'MG',
        'MGA',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'NO',
        'NOK',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'GA',
        'XAF',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'ES',
        'EUR',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'AU',
        'AUD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'TV',
        'AUD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'UG',
        'UGX',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'BB',
        'BBD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'VG',
        'USD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'BS',
        'BSD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'ML',
        'XOF',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'ZM',
        'ZMW',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'AL',
        'ALL',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    ),
    (
        'DZ',
        'DZD',
        '2021-10-02 22:03:30.77707+07',
        '2021-10-02 22:03:30.77707+07'
    );