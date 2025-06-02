-- Table: public.tm_member

-- DROP TABLE IF EXISTS public.tm_member;

CREATE TABLE IF NOT EXISTS public.tm_member
(
    id serial,
    tgl_create timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    user_create character varying(20) COLLATE pg_catalog."default" DEFAULT 'SYSTEM'::character varying,
    tgl_modify timestamp without time zone,
    user_modify character varying(20) COLLATE pg_catalog."default",
    ket_modify character varying(20) COLLATE pg_catalog."default",
    kd_member character varying(20) COLLATE pg_catalog."default",
    nama character varying(50) COLLATE pg_catalog."default",
    jenis_kelamin character varying(1) COLLATE pg_catalog."default",
    tempat_lahir character varying(50) COLLATE pg_catalog."default",
    tanggal_lahir date,
    agama character varying(20) COLLATE pg_catalog."default",
    st_pernikahan character varying(20) COLLATE pg_catalog."default",
    tgl_pernikahan date,
    kewarganegaraan character varying(3) COLLATE pg_catalog."default",
    is_hidup character varying(1) COLLATE pg_catalog."default" DEFAULT 'Y'::character varying,
    CONSTRAINT tm_member_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tm_member
    OWNER to postgres;