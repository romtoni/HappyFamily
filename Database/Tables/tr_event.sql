-- Table: public.tr_event

-- DROP TABLE IF EXISTS public.tr_event;

CREATE TABLE IF NOT EXISTS public.tr_event
(
    id serial,
    tgl_create timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    user_create character varying(20) COLLATE pg_catalog."default" DEFAULT 'SYSTEM'::character varying,
    tgl_modify timestamp without time zone,
    user_modify character varying(20) COLLATE pg_catalog."default",
    ket_modify character varying(255) COLLATE pg_catalog."default",
    kd_event character varying(20) COLLATE pg_catalog."default",
    nama_event character varying(255) COLLATE pg_catalog."default",
    kd_jenis_event character varying(20) COLLATE pg_catalog."default",
	tgl_event_dari timestamp without time zone,
	tgl_event_sampai timestamp without time zone,
	nama_penyelenggara character varying(255) COLLATE pg_catalog."default",
	nama_venue character varying(100) COLLATE pg_catalog."default", 
	alamat_venue character varying(255) COLLATE pg_catalog."default", 
    status_aktif character varying(1) COLLATE pg_catalog."default" DEFAULT 'Y'::character varying,
    ket_status character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT tr_event_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tr_event
    OWNER to postgres;