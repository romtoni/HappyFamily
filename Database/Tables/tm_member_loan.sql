-- Table: public.tm_member_loan

-- DROP TABLE IF EXISTS public.tm_member_loan;

CREATE TABLE IF NOT EXISTS public.tm_member_loan
(
    id serial,
    tgl_create timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    user_create character varying(20) COLLATE pg_catalog."default" DEFAULT 'SYSTEM'::character varying,
    tgl_modify timestamp without time zone,
    user_modify character varying(20) COLLATE pg_catalog."default",
    ket_modify character varying(255) COLLATE pg_catalog."default",
    kd_loan character varying(20) COLLATE pg_catalog."default",
    kd_member character varying(20) COLLATE pg_catalog."default",
    ket_loan character varying(255) COLLATE pg_catalog."default",
    nominal_pinjaman integer DEFAULT 0,
	nama_peminjam character varying(100) COLLATE pg_catalog."default",
	nama_diberi_pinjaman character varying(100) COLLATE pg_catalog."default",
	jenis_pembayaran character varying(20) COLLATE pg_catalog."default",
	tenor character varying(20) COLLATE pg_catalog."default",
    status_terakhir character varying(20) COLLATE pg_catalog."default",
    ket_status_terakhir character varying(20) COLLATE pg_catalog."default",
    CONSTRAINT tm_member_loan_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tm_member_loan
    OWNER to postgres;