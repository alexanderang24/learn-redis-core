INSERT INTO product(id, name, price)
VALUES(nextval('product_id_seq'), 'Bag', 50000);

INSERT INTO trx(id, product_id, amount, trx_code, status, total)
VALUES(nextval('trx_id_seq'), 1, 2, 'TRX001', 'INQUIRED', 100000);