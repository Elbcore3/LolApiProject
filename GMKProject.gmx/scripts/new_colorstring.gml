var msg,mcl,obj;
msg = argument0;
mcl = argument1;
obj = instance_create(x,y,data_colorstring);
obj.text = msg;
obj.color = mcl;
return obj;
