-- Table: public.tr_achievement

-- DROP TABLE IF EXISTS public.tr_achievement;

CREATE TABLE IF NOT EXISTS public.tr_achievement
(
    id serial,
    tgl_create timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    user_create character varying(20) COLLATE pg_catalog."default" DEFAULT 'SYSTEM'::character varying,
    tgl_modify timestamp without time zone,
    user_modify character varying(20) COLLATE pg_catalog."default",
    ket_modify character varying(255) COLLATE pg_catalog."default",
    kd_achievement character varying(20) COLLATE pg_catalog."default",
    nama_achievement character varying(255) COLLATE pg_catalog."default",
    kd_jenis_achievement character varying(20) COLLATE pg_catalog."default",
    status_aktif character varying(1) COLLATE pg_catalog."default" DEFAULT 'Y'::character varying,
    ket_status character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT tr_achievement_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tr_achievement
    OWNER to postgres;