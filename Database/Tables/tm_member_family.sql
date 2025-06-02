-- Table: public.tm_member_family

-- DROP TABLE IF EXISTS public.tm_member_family;

CREATE TABLE IF NOT EXISTS public.tm_member_family
(
    id integer NOT NULL DEFAULT nextval('tm_member_family_id_seq'::regclass),
    tgl_create timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    user_create character varying(20) COLLATE pg_catalog."default" DEFAULT 'SYSTEM'::character varying,
    tgl_modify timestamp without time zone,
    user_modify character varying(20) COLLATE pg_catalog."default",
    ket_modify character varying(20) COLLATE pg_catalog."default",
    kd_member character varying(20) COLLATE pg_catalog."default",
    kd_family character varying(5) COLLATE pg_catalog."default",
    kd_member_group character varying(20) COLLATE pg_catalog."default",
    CONSTRAINT tm_member_family_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tm_member_family
    OWNER to postgres;