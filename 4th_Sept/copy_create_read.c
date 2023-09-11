#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/types.h>

int main(){

    int a,b,c;
    char buf[1024];

    a=open("first_half.txt",O_CREAT|O_WRONLY,0644);
    b=open("second_half.txt",O_CREAT|O_RDWR,0777);
    c=open("file.txt",O_RDONLY);

    int size=lseek(c,0,SEEK_END);
    int fh=size/2;

    read(c,buf,fh);
    write(a,buf,fh);
    lseek(a,fh,SEEK_SET);
    read(c,buf,size-fh);
    write(b,buf,size-fh);

    close(a);
    close(b);
    close(c);
    

    return 0;
}
