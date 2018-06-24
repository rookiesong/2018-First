#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/ipc.h>
#include <fcntl.h>
#include "job.h"
int main(int argc, char*argv[])
{
	int flag;
	int p = 0;
	struct jobcmd deqcmd;
	p = atoi(*(++argv));
	if (p <= 0 || p>=9)
	{
		printf("Please enter the correct jid\n");
		return 0;
	}
	--argv;
	deqcmd.argnum = argc;
	deqcmd.defpri = 0;
	deqcmd.owner = getuid();
	deqcmd.type = DEQ;
	strcpy(deqcmd.data, *++argv);
	if ((flag = open(FIFO, O_WRONLY)) < 0)
		error_sys("deq open fifo failed");
	if (write(flag, &deqcmd, DATALEN) < 0)
		error_sys("deq write failed");
	close(flag);
	return 0;
}