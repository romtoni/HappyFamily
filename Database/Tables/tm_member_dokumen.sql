-- Table: public.tm_member_dokumen

-- DROP TABLE IF EXISTS public.tm_member_dokumen;

CREATE TABLE IF NOT EXISTS public.tm_member_dokumen
(
    id integer NOT NULL DEFAULT nextval('tm_member_dokumen_id_seq'::regclass),
    tgl_create timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    user_create character varying(20) COLLATE pg_catalog."default" DEFAULT 'SYSTEM'::character varying,
    tgl_modify timestamp without time zone,
    user_modify character varying(20) COLLATE pg_catalog."default",
    ket_modify character varying(255) COLLATE pg_catalog."default",
    kd_dokumen character varying(10) COLLATE pg_catalog."default",
    kd_member character varying(20) COLLATE pg_catalog."default",
    binary_file bytea,
    link_file text COLLATE pg_catalog."default",
    nama_file character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT tm_member_dokumen_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tm_member_dokumen
    OWNER to postgres;