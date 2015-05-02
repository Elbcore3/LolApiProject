var response, store;
response = argument0;
store = argument1;
if (store.object_index == data_unformatted) {
store.text = response;
store.written=1;
}
if (keyobjects(store)) {
//show_message("Mode: KeyRead");
char = "";
status = 1;
readkey = "";
readvalue = "";
for (i=1; i<=string_length(response); i+=1)
{
char = string_char_at(response,i);
//Wait for Key
if (status == 1) {
//show_message('Status: Waiting for Key at Char: "'+char+'"');
if (char == '"') {
status = 2;
i+=1;
if (i<=string_length(response)) {
char = string_char_at(response,i);
}
}
}
//
//Read Key Name
if (status == 2) {
//show_message('Status: Found Key! Reading Char: "'+char+'" Key: "'+readkey+'"');
if (char!='"') {
readkey +=char;
}
if (char =='"') {
status = 3;
i+=1;
if (i<=string_length(response)) {
char = string_char_at(response,i);
}
}
if (char =='{') {
readkey = "";
readvalue = "";
status = 1;
}
}
//
//Wait for Value
if (status == 3) {
//show_message('Status: Waiting for Value at Char: "'+char+'" for Key: "'+readkey+'"');
if (char == ':') {
status = 4;
i+=1;
if (i<=string_length(response)) {
char = string_char_at(response,i);
}
}
}
//
//Read Value Name
if (status == 4) {
//show_message('Status: Found Value! Reading Char: "'+char+'" Value: "'+readvalue+'"');
if ((char!='"')&&(char!=',')&&(char!='}')) {
readvalue +=char;
}
if ((char ==',')||(char=='}')) {
status = 5;
}
if (char =='{') {
readvalue = "";
status = 5;
}
}
//
//Interpret Value
if (status == 5) {

//Summoner Info
if (store.object_index == data_summoners) {
if (readvalue == "") {
//show_message('"'+readkey+'"');
ws_setsummoner(store,readkey);
readkey = "";
readvalue = "";
status = 1;
}
else {
//show_message('"'+readkey+'" : "'+readvalue+'"');
if (readkey=="id") {ws_set_id(store,readvalue);}
if (readkey=="name") {ws_set_name(store,readvalue);}
if (readkey=="profileIconId") {ws_set_icon(store,readvalue);}
if (readkey=="summonerLevel") {ws_set_level(store,readvalue);}
readkey = "";
readvalue = "";
status = 1;
}
}
if (store.object_index == data_champs) {
if (readvalue == "") {
//show_message('"'+readkey+'"');
if ((readkey!="data")&&(readkey!="info")) {
wcl_setchampion(store,readkey);
}
readkey = "";
readvalue = "";
status = 1;
}
else {
//show_message('"'+readkey+'" : "'+readvalue+'"');
if (readkey=="id") {wcl_set_id(store,readvalue);}
if (readkey=="name") {wcl_set_name(store,readvalue);}
readkey = "";
readvalue = "";
status = 1;
}
}
if (store.object_index == data_champstats) {
if (readvalue == "") {
//show_message('"'+readkey+'"');
readkey = "";
readvalue = "";
status = 1;
}
else {
//show_message('"'+readkey+'" : "'+readvalue+'"');
if (readkey=="id") {wc_setchampion(store,readvalue);}
if (readkey=="totalSessionsPlayed") {wc_set_games(store,readvalue);}
if (readkey=="totalSessionsWon") {wc_set_wins(store,readvalue);}
if (readkey=="totalSessionsLost") {wc_set_losses(store,readvalue);}
readkey = "";
readvalue = "";
status = 1;
}
}
if (store.object_index == data_ranks) {
if (readvalue == "") {
//show_message('"'+readkey+'"');
if (readkey!="entries") {
wr_setsummoner(store,readkey);
}
readkey = "";
readvalue = "";
status = 1;
}
else {
//show_message('"'+readkey+'" : "'+readvalue+'"');
if (readkey=="queue") {
if (readvalue=="RANKED_SOLO_5x5") {
wr_set_write(store,true);
}
else {
wr_set_write(store,false);
}
}
if (readkey=="playerOrTeamId") {wr_set_id(store,readvalue);}
if (readkey=="playerOrTeamName") {wr_set_name(store,readvalue);}
if (readkey=="tier") {wr_set_league(store,readvalue);}
if (readkey=="division") {wr_set_division(store,readvalue);}
if (readkey=="wins") {wr_set_summonerwins(store,readvalue);}
if (readkey=="losses") {wr_set_summonerlosses(store,readvalue);}
readkey = "";
readvalue = "";
status = 1;
}
}
//


}
//
};

store.written=1;
}
return true;
