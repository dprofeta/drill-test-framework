SELECT (CASE WHEN NULLIF(true,false) THEN 1 ELSE 0 END) FROM (VALUES(1)) test_tbl;