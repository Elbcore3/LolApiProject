var oso,osto;
oso = instance_create(0,0,socket);
oso.url ='https://global.api.pvp.net/api/lol/static-data/'+region+'/v1.2/champion?dataById=true&champData=info&api_key='+api_key;
osto = instance_create(0,0,data_champs);
oso.storein = osto;
oso.status = 1;
return osto;
