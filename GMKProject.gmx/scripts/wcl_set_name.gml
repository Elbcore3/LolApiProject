var datobj,ind,chob;
datobj = argument0;
ind = argument1;
chob =ds_map_find_value(datobj.champs,datobj.champind);
chob.championname = ind;
