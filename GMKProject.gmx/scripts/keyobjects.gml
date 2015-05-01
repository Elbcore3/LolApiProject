var inst,obj,part;
inst = argument0;
obj[0] = data_summoners;
part = false;
for (i=0; i<array_length_1d(obj); i+=1)
{
if (inst.object_index==obj[i]) {
part=true;
}
};
return part;
