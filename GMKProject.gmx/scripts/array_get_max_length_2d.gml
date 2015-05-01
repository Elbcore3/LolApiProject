var iar,l;
iar = argument0;
l=0;
for (var i = array_height_2d(iar); i > -1; i--;)
   {
  if (array_length_2d(iar, i)>l) {
  l=array_length_2d(iar, i);
  }
  }
  return l;
