select project0_.id as id2_0_, projectmem1_.id as id3_1_, project0_.createTime as createTime2_0_, project0_.describes as describes2_0_, project0_.logoAddr as logoAddr2_0_, project0_.name as name2_0_, projectmem1_.projectId as projectId3_1_, projectmem1_.role as role3_1_, projectmem1_.status as status3_1_, projectmem1_.userId as userId3_1_ from pm.projects project0_ cross join pm.projectmember projectmem1_ where projectmem1_.userId='42' and projectmem1_.projectId=project0_.id order by project0_.createTime desc limit 0, 10;
select * from projects where projects.id in (select pm.projectmember.projectId from pm.projectmember where userId = '42');