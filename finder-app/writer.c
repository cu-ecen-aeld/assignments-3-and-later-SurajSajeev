#include<stdio.h>
#include<syslog.h>
#include<stdlib.h>
int main(int argc, char *argv[])
{
    if(argc != 3)
    {
        syslog(LOG_ERR,"Not enough parameters or excessive parameters provided");
        return 1;
    }
    FILE* p_opened_file = fopen(argv[1],"w");
    if(p_opened_file == NULL)
    {
        syslog(LOG_ERR,"File couldn't be opened");
        return 1;
    }
    syslog(LOG_DEBUG,"Writing %s to %s",argv[2], argv[1]);
    fputs(argv[2],p_opened_file);
    fclose(p_opened_file);
}