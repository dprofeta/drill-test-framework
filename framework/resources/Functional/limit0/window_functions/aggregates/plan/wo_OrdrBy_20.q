explain plan for select * from (
SELECT COUNT(col_int) OVER (PARTITION BY col_tm) count_int, col_tm, col_int FROM `smlTbl_v` WHERE col_vchar_52 = 'AXXXXXXXXXXXXXXXXXXXXXXXXXCXXXXXXXXXXXXXXXXXXXXXXXXB') t limit 0;