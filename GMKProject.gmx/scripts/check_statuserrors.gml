var httpstat, error, int, clean;
httpstat = argument0; clean = true;
int[0] = 400;
int[1] = 401;
int[2] = 404;
int[3] = 429;
int[4] = 500;
int[5] = 503;

for (i=0; i<array_length_1d(int); i+=1)
{
if (status ==int[i]) {
clean=false;
}
};
 return clean;