-- 2 partitions and spill cycle is 1
alter session set `planner.memory.max_query_memory_per_node` = 752428800;
alter session set `planner.width.max_per_node` = 10;
alter session set `planner.width.max_per_query` = 10;
select count(*) from (select s1.uid_rnd1, max(s1.uid_rnd2), max(s1.rms.rptd[0].a) from (select uid_rnd1, uid_rnd2, d.type type, d.uid uid, flatten(d.map.rm) rms from dfs.`/drill/testdata/hash-agg/nested_large_rand1` d) s1 group by s1.uid_rnd1);
alter session set `planner.memory.max_query_memory_per_node` = 2147483648;
alter session set `planner.width.max_per_node` = 17;
alter session set `planner.width.max_per_query` = 1000;