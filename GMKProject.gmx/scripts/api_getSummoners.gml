var oso,osto,name;
name = argument0;
oso = instance_create(0,0,socket);
oso.url ='https://'+region+'.api.pvp.net/api/lol/'+region+'/v1.4/summoner/by-name/'+name+'?api_key='+api_key;
//oso.url ='https://'+region+'.api.pvp.net/api/lol/'+region+'/v1.3/stats/by-summoner/24723394/ranked?season=SEASON2015&api_key='+api_key;
osto = instance_create(0,0,data_summoners);
oso.storein = osto;
oso.status = 1;
return osto;