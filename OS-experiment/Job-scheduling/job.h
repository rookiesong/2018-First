#ifndef JOB_H
#define JOB_H
#include<stdio.h>
#include<stdlib.h>
#include<stdarg.h>
#include<signal.h>
#include<unistd.h>
#include<sys\types.h>

#define FIFO "/root/home/SVRFIFO" 

#ifndef DEBUG
#define DEBUG
#endif
#undef DEBUG

#define BUFLEN 100
#define GLOBALFILE "screendump"

enum jobstate
{
	READY, RUNNING, DONE
};

enum cmdtype
{
	ENQ = -1, DEQ = -2, STAT = -3
};

struct jobcmd {
	enum cmdtype type;
	int argnum;
	int owner;
	int defpri;
	char data[BUFLEN];
};
#define DATALEN sizeof(struct jobcmd)
#define error_sys printf
struct jobinfo {
	int jid; 
	int pid; 
	char** cmdarg; 
	int defpri; 
	int curpri; 
	int ownerid;
	int wait_time; 
	time_t create_time;
	int run_time; 
	enum jobstate state; 
};
struct waitqueue { 
	struct waitqueue *next;
	struct jobinfo *job; 
};
void schedule();
void sig_handler(int sig, siginfo_t *info, void *notused);
int allocjid();
void do_enq(struct jobinfo *newjob, struct jobcmd enqcmd);
void do_deq(struct jobcmd deqcmd);
void do_stat();
void updateall();
struct waitqueue* jobselect();
void jobswitch();

































#endif