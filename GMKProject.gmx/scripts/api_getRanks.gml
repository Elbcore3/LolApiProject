var oso,osto,name;
name = argument0;
oso = instance_create(0,0,socket);
oso.url = 'https://'+region+'.api.pvp.net/api/lol/'+region+'/v2.5/league/by-summoner/'+name+'/entry?api_key='+api_key;
show_debug_message('https://'+region+'.api.pvp.net/api/lol/'+region+'/v2.5/league/by-summoner/'+name+'/entry?api_key='+api_key);
osto = instance_create(0,0,data_ranks);
oso.storein = osto;
oso.status = 1;
return osto;
