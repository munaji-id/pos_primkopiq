-- pos_db.vproduk source

create or replace
algorithm = UNDEFINED view `pos_db`.`vproduk` as
select
    `pos_db`.`produk`.`id_produk` as `id_produk`,
--    `pos_db`.`produk`.`id_kategori` as `id_kategori`,
    `pos_db`.`produk`.`kode_produk` as `kode_produk`,
    `pos_db`.`produk`.`nama_produk` as `nama_produk`,
    `pos_db`.`kategori`.`nama_kategori` as `nama_kategori`,
    `pos_db`.`produk`.`merk` as `merk`,
    `pos_db`.`produk`.`harga_beli` as `harga_beli`,
    `pos_db`.`produk`.`diskon` as `diskon`,
    `pos_db`.`produk`.`harga_jual` as `harga_jual`,
    `pos_db`.`produk`.`stok` as `stok`,
    `pos_db`.`produk`.`created_at` as `created_at`,
    `pos_db`.`produk`.`updated_at` as `updated_at`
from
    `pos_db`.`produk`
inner join
	`pos_db`.`kategori`
on  `pos_db`.`produk`.`id_kategori` = `pos_db`.`kategori`.`id_kategori`;
