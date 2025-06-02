-- Table: public.tm_member_identity

-- DROP TABLE IF EXISTS public.tm_member_identity;

CREATE TABLE IF NOT EXISTS public.tm_member_identity
(
    id serial,
    tgl_create timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    user_create character varying(20) COLLATE pg_catalog."default" DEFAULT 'SYSTEM'::character varying,
    tgl_modify timestamp without time zone,
    user_modify character varying(20) COLLATE pg_catalog."default",
    ket_modify character varying(20) COLLATE pg_catalog."default",
    kd_member character varying(20) COLLATE pg_catalog."default",
    kd_identity_type character varying(20) COLLATE pg_catalog."default",
    no_identitas character varying(30) COLLATE pg_catalog."default",
    is_aktif character varying(1) COLLATE pg_catalog."default" DEFAULT 'Y'::character varying,
    CONSTRAINT tm_member_identity_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tm_member_identity
    OWNER to postgres;