-- Table: public.tm_produk_price_promo

--DROP TABLE IF EXISTS public.tm_produk_price_promo;

CREATE TABLE IF NOT EXISTS public.tm_produk_price_promo
(
    id serial,
    tgl_create timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    user_create character varying(20) COLLATE pg_catalog."default" DEFAULT 'SYSTEM'::character varying,
    tgl_modify timestamp without time zone,
    user_modify character varying(20) COLLATE pg_catalog."default",
    ket_modify character varying(255) COLLATE pg_catalog."default",
    kd_produk character varying(20) COLLATE pg_catalog."default",
    kd_vendor character varying(20) COLLATE pg_catalog."default",
    kd_promo character varying(20) COLLATE pg_catalog."default",
    persen_promo integer,
    tgl_berlaku_dari timestamp without time zone,
    tgl_berlaku_sampai timestamp without time zone,
    CONSTRAINT tm_produk_price_promo_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tm_produk_price_promo
    OWNER to postgres;