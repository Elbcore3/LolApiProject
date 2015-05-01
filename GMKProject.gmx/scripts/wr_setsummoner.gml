var datobj,sum;
datobj = argument0;
sum = string(argument1);
ds_map_add(datobj.summoners,sum,instance_create(0,0,data_rankedinfo));
datobj.sumind = sum;
