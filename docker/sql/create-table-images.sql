CREATE TABLE public.images
(
    id uuid NOT NULL,
    filename VARCHAR,
    url VARCHAR
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.images
    OWNER to postgres;