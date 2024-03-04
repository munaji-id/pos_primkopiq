-- pos_db.newview source

create or replace
algorithm = UNDEFINED view `pos_db`.`vpenjualan` as
select
    `pos_db`.`penjualan`.`id_penjualan` as `id_penjualan`,
--    `pos_db`.`penjualan`.`id_member` as `id_member`,
    `pos_db`.`member`.`kode_member` as `kode_member`,
    `pos_db`.`member`.`nama` as `nama`,
    `pos_db`.`penjualan`.`total_item` as `total_item`,
    `pos_db`.`penjualan`.`total_harga` as `total_harga`,
    `pos_db`.`penjualan`.`diskon` as `diskon`,
    `pos_db`.`penjualan`.`bayar` as `bayar`,
    `pos_db`.`penjualan`.`diterima` as `diterima`,
    `pos_db`.`penjualan`.`bayar` - `pos_db`.`penjualan`.`diterima` as `piutang`,
--    `pos_db`.`penjualan`.`id_user` as `id_user`,
    `pos_db`.`users`.`name` as `user`,
    `pos_db`.`penjualan`.`created_at` as `created_at`,
    `pos_db`.`penjualan`.`updated_at` as `updated_at`
from
    `pos_db`.`penjualan`
inner join 
	`pos_db`.`member` on `pos_db`.`penjualan`.`id_member` = `pos_db`.`member`.`id_member`
inner join
	`pos_db`.`users` on `pos_db`.`penjualan`.`id_user` = `pos_db`.`users`.`id`
where
	`pos_db`.`penjualan`.`total_item` <> 0
order by
	`pos_db`.`penjualan`.`id_penjualan` desc ;
