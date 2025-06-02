-- Table: public.tm_produk

-- DROP TABLE IF EXISTS public.tm_produk;

CREATE TABLE IF NOT EXISTS public.tm_produk
(
    id integer NOT NULL DEFAULT nextval('tm_produk_id_seq'::regclass),
    tgl_create timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    user_create character varying(20) COLLATE pg_catalog."default" DEFAULT 'SYSTEM'::character varying,
    tgl_modify timestamp without time zone,
    user_modify character varying(20) COLLATE pg_catalog."default",
    ket_modify character varying(255) COLLATE pg_catalog."default",
    kd_produk character varying(20) COLLATE pg_catalog."default",
    nama_produk character varying(255) COLLATE pg_catalog."default",
    satuan character varying(20) COLLATE pg_catalog."default",
    nominal integer DEFAULT 0,
    status_aktif character varying(1) COLLATE pg_catalog."default" DEFAULT 'Y'::character varying,
    ket_status character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT tm_produk_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tm_produk
    OWNER to postgres;