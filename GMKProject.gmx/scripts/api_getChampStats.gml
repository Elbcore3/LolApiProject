var oso,osto,sid,name;
sid = argument0;
name = argument1;
oso = instance_create(0,0,socket);
oso.url ='https://'+region+'.api.pvp.net/api/lol/'+region+'/v1.3/stats/by-summoner/'+sid+'/ranked?season=SEASON2015&api_key='+api_key;
show_debug_message('https://'+region+'.api.pvp.net/api/lol/'+region+'/v1.3/stats/by-summoner/'+sid+'/ranked?season=SEASON2015&api_key='+api_key);
osto = instance_create(0,0,data_champstats);
osto.summonername = name;
oso.storein = osto;
oso.status = 1;
return osto;