import cpp

from Macro m
where m.getName() in ["ntohl", "ntohll", "ntohs"]
select m, "Definition of ntoh* macro."