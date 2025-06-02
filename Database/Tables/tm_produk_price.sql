-- Table: public.tm_produk_price

-- DROP TABLE IF EXISTS public.tm_produk_price;

CREATE TABLE IF NOT EXISTS public.tm_produk_price
(
    id serial,
    tgl_create timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    user_create character varying(20) COLLATE pg_catalog."default" DEFAULT 'SYSTEM'::character varying,
    tgl_modify timestamp without time zone,
    user_modify character varying(20) COLLATE pg_catalog."default",
    ket_modify character varying(255) COLLATE pg_catalog."default",
    kd_produk character varying(20) COLLATE pg_catalog."default",
    kd_vendor character varying(20) COLLATE pg_catalog."default",
    harga_normal integer,
    persen_diskon integer,
    tgl_berlaku_dari timestamp without time zone,
    tgl_berlaku_sampai timestamp without time zone,
    status_promo character varying(1) COLLATE pg_catalog."default",
    CONSTRAINT tm_produk_price_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tm_produk_price
    OWNER to postgres;