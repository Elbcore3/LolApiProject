var datobj,sum;
datobj = argument0;
sum = string(argument1);
ds_map_add(datobj.champs,sum,instance_create(0,0,data_championstats));
datobj.champind = sum;
wc_set_id(datobj,sum);
