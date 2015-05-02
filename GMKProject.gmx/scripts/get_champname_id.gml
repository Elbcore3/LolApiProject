var fi,ci,res;
res ="";
fi = argument0;
data_champs.champind=ds_map_find_first(data_champs.champs);
while (is_undefined(data_champs.champind)==false) {
ci = real(ds_map_find_value(data_champs.champs,data_champs.champind).championid);
if (ci==fi) {
return string(ds_map_find_value(data_champs.champs,data_champs.champind).championname);
}
data_champs.champind = ds_map_find_next(data_champs.champs,data_champs.champind);
}
return res;
