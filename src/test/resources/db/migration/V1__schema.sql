CREATE SEQUENCE product_id_seq
    INCREMENT 1
    MINVALUE  1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

CREATE TABLE product
(
    id bigint NOT NULL,
    name character varying(256) NOT NULL,
    price numeric(16,6) NOT NULL,
    CONSTRAINT product_pkey PRIMARY KEY (id),
);

CREATE SEQUENCE trx_id_seq
    INCREMENT 1
    MINVALUE  1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

CREATE TABLE trx
(
    id bigint NOT NULL,
    product_id bigint NOT NULL,
    amount int NOT NULL,
    trx_code character varying(256) NOT NULL,
    status character varying(256) NOT NULL,
    total numeric(16,6) NOT NULL,
    CONSTRAINT trx_pkey PRIMARY KEY (id),
    CONSTRAINT product_id_fkey FOREIGN KEY (product_id)
        REFERENCES product (id)
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);
