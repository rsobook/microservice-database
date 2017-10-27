-- Table: public.user_friends

-- DROP TABLE public.user_friends;

CREATE TABLE public.user_friends
(
    id uuid NOT NULL,
    created_on timestamp without time zone NOT NULL,
    edited_on timestamp without time zone NOT NULL,
    is_deleted boolean NOT NULL,
    version integer,
    friendsid uuid,
    userid uuid,
    CONSTRAINT user_friends_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.user_friends
    OWNER to postgres;