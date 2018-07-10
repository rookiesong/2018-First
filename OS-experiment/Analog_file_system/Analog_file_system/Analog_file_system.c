#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct file{
	char name[10];
	struct file *next;
	FILE *fp;
}File;

typedef struct content{
	char name[10];
	File *fileHead;
	int f_num;
	struct content *next;
}Content;

typedef struct user{
	char name[10];
	char psw[10];
	Content *conHead;
	int c_num;
	struct user *next;
}User;


int user_num = 0;
User *user_head;
User *cur_user;

void registe()
{
	if (user_num >= 10)
	{
		printf("Has 10 users.You have no access to register\n");
		return;
	}

	User *add, *last;
	add = (User *)malloc(sizeof(User));
	add->next = NULL;
	if (user_head == NULL)
		user_head = add;
	else
	{
		last = user_head;
		while (last->next != NULL)
			last = last->next;
		last->next = add;
	}
	user_num++;

	char name[10], psw[10];
	User *check;
	char buffer[2];
    unr:printf("now create a new user:\nuser name(9,only alphabet and number can be used):\n");
	scanf("%s", name);

	check = user_head;
	while (check != add)
	{
		if (strcmp(name, check->name) == 0)
		{
			printf("username exist.please re-input:\n");
			goto unr;
		}
		check = check->next;
	}
	strcpy(add->name, name);

	fgets(buffer, 2, stdin);
	printf("password(10):\n");
	fgets(psw, 10, stdin);
	strcpy(add->psw, psw);

	add->conHead = NULL;
	add->c_num = 0;

	printf("success\n");
	return;
}


int login()
{
	if (user_head == NULL)
	{
		printf("system has no user\n");
		return 0;
	}

	char buffer[2];
	fgets(buffer, 2, stdin);

	char name[10], psw[10];
	User *check;
	printf("press \"#\" if you wanna quit\n");
    unl:printf("username:\n");
	scanf("%s", name);

	if (name[0] == '#')
		return 0;

	check = user_head;
	while (check != NULL)
	{
		if (!strcmp(check->name, name))
			break;
		else
			check = check->next;
	}
	if (check == NULL)
	{
		printf("no such user..\nplease re-input:\n");
		goto unl;
	}

	//match password
	fgets(buffer, 2, stdin);
	printf("password:\n");
	fgets(psw, 11, stdin);
	if (strcmp(psw, check->psw) != 0)
	{
		printf("wrong password\n");
		goto unl;
	}
	printf("\n\n*********welcome back!%s*******\n\n", check->name);
	cur_user = check;
	return 1;
}
void main(int argc, char* argv[])
{
	user_num = 0;
	user_head = NULL;
	cur_user = NULL;
	int choice;
	for (;;)
	{
		printf("*******MAIN MENU*********\n");
		printf("1. New user\n");
		printf("2. Login\n");
		printf("0. Exit\n");
		printf("*************************\n");
		printf("	%d user exist\n", user_num);
		printf("Input Your Choice:");

		scanf("%d", &choice);
		switch (choice)
		{
		case 1:	registe(); continue;
		case 2:if (login())
			MenuUser();
			continue;
		case 0:printf("Thanks for using\n"); exit(0);
		default:printf("wrong input!\n");
		}
	}

}


int main()
{
	struct user US;
	registe();
	login();
	printf("%d", user_num);
	return 0;
}
