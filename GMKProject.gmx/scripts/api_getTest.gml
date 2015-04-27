var oso,osto;
oso = instance_create(0,0,socket);
oso.url ='https://euw.api.pvp.net/api/lol/euw/v1.4/summoner/by-name/ElbcoreAC?api_key=7404901e-6f1d-419a-b8e0-6726bf400766';
osto = instance_create(0,0,data_unformatted);
oso.storein = osto;
oso.status = 1;
return osto;
