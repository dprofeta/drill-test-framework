SELECT col0 , LAG(col0 ) OVER (ORDER BY col0 ) LAG_col0 FROM `fewRowsAllData.parquet`;