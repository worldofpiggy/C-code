#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/mman.h>

int main(void)
{

  int i, fd;
  char *buf;
  fd = open("test-data", O_RDONLY);
  buf = mmap(0, 4,PROT_READ, MAP_PRIVATE, fd, 0);

  //woo
  close(fd);
  
  for(i=0; i <4; i++)
	printf("%c\n", buf[i]);

  return(0);
}
