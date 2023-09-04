#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/types.h>

int main(){

    int a,b,c;
    char buf[100];

    a=open("first_half.txt",O_CREAT|O_RDWR,0777);
    b=open("second_half.txt",O_CREAT|O_RDWR,0777);
    c=open("file.txt",O_RDWR,0777);

    int size=lseek(c,0,SEEK_END);
    int fh=size/2;

    int x=read(c,buf,fh);
    write(a,buf,x);
    

    return 0;
}
