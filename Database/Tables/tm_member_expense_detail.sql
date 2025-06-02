-- Table: public.tm_member_expense_detail

-- DROP TABLE IF EXISTS public.tm_member_expense_detail;

CREATE TABLE IF NOT EXISTS public.tm_member_expense_detail
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    tgl_create timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    user_create character varying(20) COLLATE pg_catalog."default" DEFAULT 'SYSTEM'::character varying,
    tgl_modify timestamp without time zone,
    user_modify character varying(20) COLLATE pg_catalog."default",
    ket_modify character varying(255) COLLATE pg_catalog."default",
    kd_expense character varying(20) COLLATE pg_catalog."default",
    kd_member character varying(20) COLLATE pg_catalog."default",
    kd_produk character varying(20) COLLATE pg_catalog."default",
    kd_vendor character varying(20) COLLATE pg_catalog."default",
    total_qty integer DEFAULT 0,
    nominal_total_qty integer DEFAULT 0,
    CONSTRAINT tm_member_expense_detail_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tm_member_expense_detail
    OWNER to postgres;