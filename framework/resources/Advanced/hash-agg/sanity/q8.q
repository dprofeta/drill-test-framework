-- spill cycle 3 and 2 partitions. Max memory 82MB and took ~13mins
alter session set `planner.width.max_per_node` = 1;
alter session set `planner.memory.max_query_memory_per_node` = 227127360;
alter session set `planner.width.max_per_query` = 1;
select count(*) from (select max(nulls_col), max(length(nulls_col)), max(`filename`) from dfs.`/drill/testdata/hash-agg/data1` group by no_nulls_col) d;
alter session set `planner.memory.max_query_memory_per_node` = 2147483648;
alter session set `planner.width.max_per_node` = 17;
alter session set `planner.width.max_per_query` = 1000;