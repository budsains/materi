select kd_satker, kd_brg, COUNT(no_aset),
	SUM(CASE WHEN YEAR(tgl_perlh) <= 2016 THEN  luas ELSE 0 END) AS luas_aset_sampai_2016,
	SUM(CASE WHEN YEAR(tgl_perlh) <= 2017 THEN  luas ELSE 0 END) AS luas_aset_sampai_2017,
	SUM(CASE WHEN YEAR(tgl_perlh) <= 2018 THEN  luas ELSE 0 END) AS luas_aset_sampai_2018,
	SUM(CASE WHEN YEAR(tgl_perlh) <= 2019 THEN  luas ELSE 0 END) AS luas_aset_sampai_2019,
	SUM(CASE WHEN YEAR(tgl_perlh) <= 2020 THEN  luas ELSE 0 END) AS luas_aset_sampai_2020,
	SUM(CASE WHEN YEAR(tgl_perlh) <= 2021 THEN  luas ELSE 0 END) AS luas_aset_sampai_2021,
	SUM(CASE WHEN YEAR(tgl_perlh) <= 2022 THEN  luas ELSE 0 END) AS luas_aset_sampai_2022,
	SUM(CASE WHEN YEAR(tgl_perlh) <= 2023 THEN  luas ELSE 0 END) AS luas_aset_sampai_2023,
	SUM(CASE WHEN YEAR(tgl_perlh) <= 2024 THEN  luas ELSE 0 END) AS luas_aset_sampai_2024,


    count(CASE WHEN YEAR(tgl_perlh) <= 2016 THEN no_aset ELSE 0 END) AS jml_aset_sampai_2016,
    count(CASE WHEN YEAR(tgl_perlh) <= 2017 THEN no_aset ELSE 0 END) AS jml_aset_sampai_2017,
    count(CASE WHEN YEAR(tgl_perlh) <= 2018 THEN no_aset ELSE 0 END) AS jml_aset_sampai_2018,
    count(CASE WHEN YEAR(tgl_perlh) <= 2019 THEN no_aset ELSE 0 END) AS jml_aset_sampai_2019,
    count(CASE WHEN YEAR(tgl_perlh) <= 2020 THEN no_aset ELSE 0 END) AS jml_aset_sampai_2020,
    count(CASE WHEN YEAR(tgl_perlh) <= 2021 THEN no_aset ELSE 0 END) AS jml_aset_sampai_2021,
    count(CASE WHEN YEAR(tgl_perlh) <= 2022 THEN no_aset ELSE 0 END) AS jml_aset_sampai_2022,
    count(CASE WHEN YEAR(tgl_perlh) <= 2023 THEN no_aset ELSE 0 END) AS jml_aset_sampai_2023,
    count(CASE WHEN YEAR(tgl_perlh) <= 2024 THEN no_aset ELSE 0 END) AS jml_aset_sampai_2024,

    SUM(CASE WHEN YEAR(tgl_perlh) <= 2016 THEN rph_aset ELSE 0 END) AS nilai_aset_sampai_2016,
    SUM(CASE WHEN YEAR(tgl_perlh) <= 2017 THEN rph_aset ELSE 0 END) AS nilai_aset_sampai_2017,
    SUM(CASE WHEN YEAR(tgl_perlh) <= 2018 THEN rph_aset ELSE 0 END) AS nilai_aset_sampai_2018,
    SUM(CASE WHEN YEAR(tgl_perlh) <= 2019 THEN rph_aset ELSE 0 END) AS nilai_aset_sampai_2019,
    SUM(CASE WHEN YEAR(tgl_perlh) <= 2020 THEN rph_aset ELSE 0 END) AS nilai_aset_sampai_2020,
    SUM(CASE WHEN YEAR(tgl_perlh) <= 2021 THEN rph_aset ELSE 0 END) AS nilai_aset_sampai_2021,
    SUM(CASE WHEN YEAR(tgl_perlh) <= 2022 THEN rph_aset ELSE 0 END) AS nilai_aset_sampai_2022,
    SUM(CASE WHEN YEAR(tgl_perlh) <= 2023 THEN rph_aset ELSE 0 END) AS nilai_aset_sampai_2023,
    SUM(CASE WHEN YEAR(tgl_perlh) <= 2024 THEN rph_aset ELSE 0 END) AS nilai_aset_sampai_2024,
    YEAR(tgl_perlh) AS tahun_perolehan
from DJKN.VW_SIMAN2_M_ASET_015 vsaaa 
where vsaaa.status_bmn_yn ='Y'
group by vsaaa.kd_satker, vsaaa.kd_brg, year(vsaaa.tgl_perlh)
ORDER BY vsaaa.kd_satker, vsaaa.kd_brg ASC
