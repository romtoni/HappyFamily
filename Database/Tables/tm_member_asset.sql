-- Table: public.tm_member_asset

--DROP TABLE IF EXISTS public.tm_member_asset;

CREATE TABLE IF NOT EXISTS public.tm_member_asset
(
    id serial,
    tgl_create timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    user_create character varying(20) COLLATE pg_catalog."default" DEFAULT 'SYSTEM'::character varying,
    tgl_modify timestamp without time zone,
    user_modify character varying(20) COLLATE pg_catalog."default",
    ket_modify character varying(255) COLLATE pg_catalog."default",
    kd_aset character varying(20) COLLATE pg_catalog."default",
    kd_member character varying(20) COLLATE pg_catalog."default",
    ket_aset character varying(255) COLLATE pg_catalog."default",
    kepemilikan_status character varying(20) COLLATE pg_catalog."default",
	kepemilikan_sejak timestamp without time zone,
	nominal_pembelian integer default 0,
	status_terakhir character varying(20) COLLATE pg_catalog."default",
	ket_status_terakhir character varying(20) COLLATE pg_catalog."default",
    CONSTRAINT tm_member_asset_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tm_member_asset
    OWNER to postgres;