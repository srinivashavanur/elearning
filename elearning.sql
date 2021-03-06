/****** Object:  Table [dbo].[cquestions]    Script Date: 07/05/2008 13:06:53 ******/
USE [elearning]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cquestions]') AND type in (N'U'))
DROP TABLE [dbo].[cquestions]
GO
/****** Object:  Table [dbo].[cchapters]    Script Date: 07/05/2008 13:06:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cchapters]') AND type in (N'U'))
DROP TABLE [dbo].[cchapters]
GO
/****** Object:  Table [dbo].[cchapters]    Script Date: 07/05/2008 13:06:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cchapters]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[cchapters](
	[chapno] [smallint] NOT NULL,
	[chap] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
END
GO
INSERT [dbo].[cchapters] ([chapno], [chap]) VALUES (1, N'Introduction to C
C is one of the best Computer programming language ever made.
It was developed by Dennis Ritchie

C language consists of several data types as shown :
int 	2 bytes
float 	4 bytes
char 	1 byte
long 	4 bytes
double 	8 bytes

Since C is a compiler, it makes an EXE file which can be executed on any computer having just an Operating System. Also a C program requires a library file to be included at the top of every program')
INSERT [dbo].[cchapters] ([chapno], [chap]) VALUES (2, N'Lets start with certain built in functions of C

printf() 
This is a built in function used for displaying messages as well as the result of processing done. It contains formatting characters like :
%d  - it designates an integer
%f  - it designates a float (fractional value)
%c  - it designates a character
%s  - it designates a string
%ld  - it designates a long integer
%u  - it designates an unsigned integer (positive value)

Examples :
printf("Beleive in God");
It prints a text message : Beleive in God on the screen

printf("Values of a is %d and b is %d",a,b);
Assuming the values of a and b as 10 and 20 respectively, it prints following text on the screen :
Values of a is 10 and b is 20
Note : %d are replaced by the integer values of variables a and b')
INSERT [dbo].[cchapters] ([chapno], [chap]) VALUES (3, N'scanf()
This function is used for feeding values. It is a very useful tool for increasing interaction of the user with the computer. 
User is always asked to enter values for the variables of which values are not specified and gets the result as per according to the values entered.

Examples :
printf("Enter values of length and breadth");
scanf("%d %d",&l,&b);

where %d stands for integer. The two integer values entered by the user are assigned to variables l and b respectively. 
Note : & (ampersand) designates the address of the variable

printf("Enter your name");
scanf("%s",n);
The string (name) entered by the user is assigned to variable n')
/****** Object:  Table [dbo].[cquestions]    Script Date: 07/05/2008 13:06:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cquestions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[cquestions](
	[chapno] [smallint] NULL,
	[question_no] [int] NULL,
	[question] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[choicea] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[choiceb] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[choicec] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[choiced] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[answer] [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
END
GO
INSERT [dbo].[cquestions] ([chapno], [question_no], [question], [choicea], [choiceb], [choicec], [choiced], [answer]) VALUES (1, 1, N'printf() is a command used for', N'printing', N'feeding data', N'including a library file', N'creating a print file', N'a         ')
INSERT [dbo].[cquestions] ([chapno], [question_no], [question], [choicea], [choiceb], [choicec], [choiced], [answer]) VALUES (1, 2, N'scanf() is a command used for', N'creating a random file', N'displaying user messages', N'feeding some data into computer', N'scanning a figure', N'c         ')
INSERT [dbo].[cquestions] ([chapno], [question_no], [question], [choicea], [choiceb], [choicec], [choiced], [answer]) VALUES (1, 3, N'if command is used for', N'repeating a set of statement(s) for several times', N'to define a structure', N'to skip a part of the loop', N'decides which set of statement(s) to be executed depending on the logical condition', N'd         ')
INSERT [dbo].[cquestions] ([chapno], [question_no], [question], [choicea], [choiceb], [choicec], [choiced], [answer]) VALUES (1, 4, N'What is true for :
do while loop', N'not execute at all if expression is false', N'will execute at least once', N'will always execute whatever the logical condition is', N'none', N'b         ')
