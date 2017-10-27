-- Table: public.user_messages

-- DROP TABLE public.user_messages;

CREATE TABLE public.user_messages
(
    id uuid NOT NULL,
    created_on timestamp without time zone NOT NULL,
    edited_on timestamp without time zone NOT NULL,
    is_deleted boolean NOT NULL,
    version integer,
    content character varying(255) COLLATE pg_catalog."default",
    recipientid uuid,
    senderid uuid,
    CONSTRAINT user_messages_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.user_messages
    OWNER to postgres;