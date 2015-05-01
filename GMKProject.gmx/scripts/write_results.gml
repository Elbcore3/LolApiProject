var response, store;
response = argument0;
store = argument1;
if (store.object_index == data_unformatted) {
store.text = response;
store.written=1;
}
if (keyobjects(store)) {
show_message("Mode: KeyRead");
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
if (store.object_index == data_summonerinfo) {
if (readvalue == "") {
show_message('"'+readkey+'"');
readkey = "";
readvalue = "";
status = 1;
}
else {
show_message('"'+readkey+'" : "'+readvalue+'"');
if (readkey=="id") {store.summonerid = real(readvalue);}
if (readkey=="name") {store.summonername = readvalue;}
if (readkey=="profileIconId") {store.summonericon = real(readvalue);}
if (readkey=="summonerLevel") {store.summonerlevel = real(readvalue);}
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
