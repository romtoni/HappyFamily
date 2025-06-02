-- Table: public.tr_lookup

-- DROP TABLE IF EXISTS public.tr_lookup;

CREATE TABLE IF NOT EXISTS public.tr_lookup
(
    id serial,
    tgl_create timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    user_create character varying(20) COLLATE pg_catalog."default" DEFAULT 'SYSTEM'::character varying,
    tipe_lookup character varying(20) COLLATE pg_catalog."default",
    kd_lookup character varying(20) COLLATE pg_catalog."default",
    nama_lookup character varying(50) COLLATE pg_catalog."default",
    keterangan character varying(255) COLLATE pg_catalog."default",
    st_aktif character varying(1) COLLATE pg_catalog."default" DEFAULT 'Y'::character varying,
    st_tampil character varying(1) COLLATE pg_catalog."default" DEFAULT 'Y'::character varying,
    urutan integer,
    CONSTRAINT tr_lookup_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tr_lookup
    OWNER to postgres;