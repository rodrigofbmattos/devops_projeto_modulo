CREATE TABLE product (id BIGSERIAL PRIMARY KEY,
                      name VARCHAR(255) NOT NULL,
                      price NUMERIC(7,2) NOT NULL,
                      minimum_quantity INTEGER NOT NULL,
                      total_quantity INTEGER NOT NULL,
                      type VARCHAR(255) NOT NULL);

INSERT INTO product (id, name, price, minimum_quantity, total_quantity, type) VALUES (1, 'Notebook Core i5', 3500.00, 3, 6, 'Notebook');
INSERT INTO product (id, name, price, minimum_quantity, total_quantity, type) VALUES (2, 'Notebook Core i7', 5600.00, 3, 3, 'Notebook');
INSERT INTO product (id, name, price, minimum_quantity, total_quantity, type) VALUES (3, 'Mouse Sem Fio', 89.99, 10, 15, 'Periférico');
INSERT INTO product (id, name, price, minimum_quantity, total_quantity, type) VALUES (4, 'Monitor 17 Polegadas', 550.00, 5, 5, 'Periférico' );
INSERT INTO product (id, name, price, minimum_quantity, total_quantity, type) VALUES (5, 'Monitor 21 Polegadas', 680.00, 5, 3, 'Periférico');
INSERT INTO product (id, name, price, minimum_quantity, total_quantity, type) VALUES (6, 'Teclado Sem Fio', 129.50, 10, 27, 'Periférico');
INSERT INTO product (id, name, price, minimum_quantity, total_quantity, type) VALUES (7, 'Headset Bluetooth', 210.00, 5, 14, 'Áudio');
INSERT INTO product (id, name, price, minimum_quantity, total_quantity, type) VALUES (8, 'Cabo USB Tipo-C 2 Metros', 39.90, 10, 40, 'Outros');
INSERT INTO product (id, name, price, minimum_quantity, total_quantity, type) VALUES (9, 'SSD 500GB', 199.99, 5, 0, 'Armazenamento');
INSERT INTO product (id, name, price, minimum_quantity, total_quantity, type) VALUES (10, 'SSD 1TB', 329.79, 5, 1, 'Armazenamento');
INSERT INTO product (id, name, price, minimum_quantity, total_quantity, type) VALUES (11, 'Notebook Core i3', 2300.00, 3, 5, 'Notebook');
INSERT INTO product (id, name, price, minimum_quantity, total_quantity, type) VALUES (12, 'Cabo USB Tipo-C 3 Metros', 45.50, 10, 32, 'Outros');
INSERT INTO product (id, name, price, minimum_quantity, total_quantity, type) VALUES (13, 'Monitor 24 Polegadas', 765.00, 3, 6, 'Periférico');
INSERT INTO product (id, name, price, minimum_quantity, total_quantity, type) VALUES (14, 'Monitor 27 Polegadas', 1099.00, 3, 7, 'Periférico');
INSERT INTO product (id, name, price, minimum_quantity, total_quantity, type) VALUES (15, 'Hub USB 5 Portas', 55.90, 5, 5, 'Periférico');
INSERT INTO product (id, name, price, minimum_quantity, total_quantity, type) VALUES (16, 'Kit Teclado e Mouse Sem Fio', 189.99, 5, 7, 'Periférico');
INSERT INTO product (id, name, price, minimum_quantity, total_quantity, type) VALUES (17, 'HD Externo 1TB', 346.90, 5, 6, 'Armazenamento');
INSERT INTO product (id, name, price, minimum_quantity, total_quantity, type) VALUES (18, 'HD Externo 2TB', 489.90, 5, 3, 'Armazenamento');
INSERT INTO product (id, name, price, minimum_quantity, total_quantity, type) VALUES (19, 'Fone de Ouvido Bluetooth', 198.90, 10, 11, 'Áudio');
INSERT INTO product (id, name, price, minimum_quantity, total_quantity, type) VALUES (20, 'Headphone Bluetooth', 246.29, 5, 11, 'Áudio');
INSERT INTO product (id, name, price, minimum_quantity, total_quantity, type) VALUES (21, 'Impressora Multifuncional Jato de Tinta', 409.90, 2, 3, 'Impressora');
INSERT INTO product (id, name, price, minimum_quantity, total_quantity, type) VALUES (22, 'Impressora Multifuncional Laser', 999.99, 2, 0, 'Impressora');
INSERT INTO product (id, name, price, minimum_quantity, total_quantity, type) VALUES (23, 'Nobreak 750VA', 560.00, 2, 1, 'Outros');
INSERT INTO product (id, name, price, minimum_quantity, total_quantity, type) VALUES (24, 'Nobreak 1500VA', 875.95, 2, 5, 'Outros');
INSERT INTO product (id, name, price, minimum_quantity, total_quantity, type) VALUES (25, 'Cabo HDMI 2 Metros', 78.90, 5, 7, 'Outros');