var ss,si,list,count,games,chid;
count= 5;
if (count>ds_map_size(champs)) {
count = ds_map_size(champs)-1;
}
list = ds_list_create();
while (ds_list_size(list)<count) {
games =0;
chid = -1;
champind = ds_map_find_first(champs);
while (is_undefined(champind)==false) {
ss = real(ds_map_find_value(champs,champind).championid);
si = real(ds_map_find_value(champs,champind).championgames);
if (ss!=0) {
if ((si>games)&&(ds_list_find_index(list,ss)==-1)) {
games = si;
chid = ss;
}
}
champind = ds_map_find_next(champs,champind);
}
ds_list_add(list,chid);
}
return list;
