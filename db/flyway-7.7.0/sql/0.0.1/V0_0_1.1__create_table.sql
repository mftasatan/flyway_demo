CREATE TABLE demo_schema."user"
(
    username character varying(20) NOT NULL,
    description character varying(1000),
    PRIMARY KEY (username)
)
WITH (
    OIDS = FALSE
);

ALTER TABLE demo_schema."user"
    OWNER to demouser;