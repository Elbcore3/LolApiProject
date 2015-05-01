var datobj,ind,chob;
datobj = argument0;
ind = argument1;
chob =ds_map_find_value(datobj.summoners,datobj.sumind);
if (datobj.write==true) {
chob.summonername = ind;
}
