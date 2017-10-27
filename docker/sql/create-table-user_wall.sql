-- Table: public.user_messages

-- DROP TABLE public.user_messages;

CREATE TABLE public.user_wall
(
    id uuid NOT NULL,
    created_on timestamp without time zone NOT NULL,
    edited_on timestamp without time zone NOT NULL,
    is_deleted boolean NOT NULL,
    version integer,
    content text COLLATE pg_catalog."default",
    userid uuid,
    CONSTRAINT user_messages_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.user_wall
    OWNER to postgres;