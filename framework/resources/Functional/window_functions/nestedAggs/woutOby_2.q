SELECT c2, MIN(MAX(c1)) OVER ( PARTITION BY c2 ) FROM `tblWnulls.parquet` GROUP BY c2;
