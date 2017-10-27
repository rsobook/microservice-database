-- Table: public.pet

-- DROP TABLE public.pet;

CREATE TABLE public.pet
(
    id uuid NOT NULL,
    created_on timestamp without time zone NOT NULL,
    edited_on timestamp without time zone NOT NULL,
    is_deleted boolean NOT NULL,
    version integer,
    age integer,
    imagehandle character varying(255) COLLATE pg_catalog."default",
    name character varying(255) COLLATE pg_catalog."default",
    ownerid uuid,
    CONSTRAINT pet_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.pet
    OWNER to postgres;

