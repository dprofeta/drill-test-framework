SELECT col4, MAX(MIN(col4)) OVER ( PARTITION BY col7 ORDER BY col0 ) max_col4, col7 FROM `allTypsUniq.parquet` GROUP BY col0,col4,col7;