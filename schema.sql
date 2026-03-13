CREATE TABLE customers (
    customer_id TEXT PRIMARY KEY,
    customer_city TEXT,
    customer_state TEXT
);

CREATE TABLE orders (
    order_id TEXT PRIMARY KEY,
    customer_id TEXT,
    order_status TEXT,
    order_purchase_timestamp TIMESTAMP
);

CREATE TABLE order_items (
    order_id TEXT,
    product_id TEXT,
    seller_id TEXT,
    price NUMERIC,
    freight_value NUMERIC
);

CREATE TABLE products (
    product_id TEXT PRIMARY KEY,
    product_category_name TEXT
);

CREATE TABLE payments (
    order_id TEXT,
    payment_type TEXT,
    payment_value NUMERIC
);



INSERT INTO customers VALUES
('C1','Sao Paulo','SP'),
('C2','Rio','RJ'),
('C3','Curitiba','PR');

INSERT INTO orders VALUES
('O1','C1','delivered','2018-01-01'),
('O2','C2','delivered','2018-02-10'),
('O3','C1','shipped','2018-03-05');

INSERT INTO order_items VALUES
('O1','P1','S1',100,10),
('O2','P2','S2',200,20),
('O3','P1','S1',150,15);

INSERT INTO products VALUES
('P1','electronics'),
('P2','furniture');

INSERT INTO payments VALUES
('O1','credit_card',110),
('O2','voucher',220),
('O3','credit_card',165);