-- Table: public."user"

-- DROP TABLE public."user";

CREATE TABLE public."user"
(
    id uuid NOT NULL,
    created_on timestamp without time zone NOT NULL,
    edited_on timestamp without time zone NOT NULL,
    is_deleted boolean NOT NULL,
    version integer,
    email character varying(255) COLLATE pg_catalog."default",
    imghandle character varying(255) COLLATE pg_catalog."default",
    keycloakid uuid,
    name character varying(255) COLLATE pg_catalog."default",
    surname character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT user_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."user"
    OWNER to postgres;

