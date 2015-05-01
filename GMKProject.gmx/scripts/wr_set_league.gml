var datobj,ind,chob;
datobj = argument0;
ind = argument1;
chob =ds_map_find_value(datobj.summoners,datobj.sumind);
if (chob.summonerleague=="Unranked") {
chob.summonerleague = ind;
}
