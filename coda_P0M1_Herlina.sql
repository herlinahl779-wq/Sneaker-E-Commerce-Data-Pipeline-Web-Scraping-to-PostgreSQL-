/*
=================================================
Milestone 1

Nama  : Herlina
Batch : CODA-RMT-018

Program ini dibuat untuk membuat database SQL 
=================================================
*/

CREATE TABLE sneakers (
    id SERIAL PRIMARY KEY,
    nama_produk TEXT,
	brand_produk TEXT,
    harga_retail FLOAT,
    link_gambar TEXT,
    harga_original FLOAT,
	diskon FLOAT
);

COPY sneakers (nama_produk, brand_produk, harga_retail, link_gambar, harga_original, diskon)
FROM '/private/tmp/coda_P0M1_Data_Bersih_Herlina.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM sneakers;