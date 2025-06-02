-- Table: public.tm_member_group

-- DROP TABLE IF EXISTS public.tm_member_group;

CREATE TABLE IF NOT EXISTS public.tm_member_group
(
    id serial,
    tgl_create timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    user_create character varying(20) COLLATE pg_catalog."default" DEFAULT 'SYSTEM'::character varying,
    tgl_modify timestamp without time zone,
    user_modify character varying(20) COLLATE pg_catalog."default",
    ket_modify character varying(255) COLLATE pg_catalog."default",
    kd_member_group character varying(10) COLLATE pg_catalog."default",
    nama character varying(255) COLLATE pg_catalog."default",
    kd_identity_type character varying(20) COLLATE pg_catalog."default",
    no_identitas character varying(30) COLLATE pg_catalog."default",
    CONSTRAINT tm_member_group_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tm_member_group
    OWNER to postgres;