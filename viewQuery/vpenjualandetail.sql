-- pos_db.vpenjualandetail source

create or replace
algorithm = UNDEFINED view `pos_db`.`vpenjualandetail` as
select
	substring(`pos_db`.`penjualan_detail`.`created_at`, 1, 10) as `tgl_penjualan`,
--    `pos_db`.`penjualan_detail`.`id_penjualan_detail` as `id_penjualan_detail`,
    `pos_db`.`penjualan_detail`.`id_penjualan` as `id_penjualan`,
--     `pos_db`.`penjualan`.`id_member` as `id_member`,
    `pos_db`.`member`.`kode_member` as `kode_anggota`,
--    `pos_db`.`penjualan_detail`.`id_produk` as `id_produk`,
    `pos_db`.`produk`.`kode_produk` as `kode_produk`,
    `pos_db`.`produk`.`nama_produk` as `nama_produk`,
    `pos_db`.`penjualan_detail`.`jumlah` as `jumlah`,
    `pos_db`.`produk`.`harga_beli` as `harga_beli`,
    `pos_db`.`penjualan_detail`.`harga_jual` as `harga_jual`,
    `pos_db`.`penjualan_detail`.`diskon` as `diskon`,
    `pos_db`.`penjualan_detail`.`subtotal` as `subtotal`,
    `pos_db`.`penjualan_detail`.`created_at` as `created_at`,
    `pos_db`.`penjualan_detail`.`updated_at` as `updated_at`
from 
    `pos_db`.`penjualan_detail`
inner join 
	`pos_db`.`produk` on `pos_db`.`penjualan_detail`.`id_produk` = `pos_db`.`produk`.`id_produk`
inner join
	`pos_db`.`penjualan` on `pos_db`.`penjualan_detail`.`id_penjualan` = `pos_db`.`penjualan`.`id_penjualan`
inner join 
	`pos_db`.`member` on `pos_db`.`penjualan`.`id_member` = `pos_db`.`member`.`id_member`
order by 
	`pos_db`.`penjualan_detail`.`created_at` desc
	;
