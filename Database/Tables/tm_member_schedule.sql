-- Table: public.tm_member_schedule

-- DROP TABLE IF EXISTS public.tm_member_schedule;

CREATE TABLE IF NOT EXISTS public.tm_member_schedule
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    tgl_create timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    user_create character varying(20) COLLATE pg_catalog."default" DEFAULT 'SYSTEM'::character varying,
    tgl_modify timestamp without time zone,
    user_modify character varying(20) COLLATE pg_catalog."default",
    ket_modify character varying(255) COLLATE pg_catalog."default",
    kd_member character varying(20) COLLATE pg_catalog."default",
    tgl_jadwal timestamp without time zone,
    tujuan character varying(255) COLLATE pg_catalog."default",
    reminder_status character varying(1) COLLATE pg_catalog."default",
    reminder_hari integer,
    reminder_jam integer,
    reminder_menit integer,
    CONSTRAINT tm_member_schedule_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tm_member_schedule
    OWNER to postgres;