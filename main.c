/*
** main.c for  in /home/renard_e/2/asm_minilibc
**
** Made by Gregoire Renard
** Login   <renard_e@epitech.net>
**
** Started on  Mon Mar 13 08:55:54 2017 Gregoire Renard
** Last update Thu Mar 30 15:26:28 2017 Gregoire Renard
*/

#include <string.h>
#include <stdlib.h>

#include <unistd.h>
#include <stdio.h>

/* int		my_strlen(char *s); */
/* int		my_strcmp(char *s1, char *s2); */
/* int		my_strncmp(char *s1, char *s2, int n); */
/* char		*my_strchr(char *s, char c); */
/* char		*my_strstr(char *s1, char *s2); */
/* char		*my_strpbrk(char *s1, char *s2); */
/* int		my_strcspn(char *s, char *reject); */
/* char		*my_memset(char *s, int c, int n); */
/* char		*my_rindex(char *s, char letter); */
/* int		my_strcasecmp(char *s, char *s2); */
int		main()
{
  char		*str1;
  char		*str2;
  char		*str3;
  char		*str4;
  char		*str5;
  char		*str6;
  char		*str7;
  char		*str8;
  char		*str9;
  char		*str10;
  char		*str11;
  char		*str12;
  char		*str13;
  char		c1;
  char		c2;
  char		c3;
  
  c1 = '\0';
  c2 = 'X';
  c3 = 'n';
  str1 = strdup("lol");
  str2 = strdup("lil");
  str3 = strdup("Another test...");
  str4 = strdup("another test...");
  str5 = strdup("One more test!");
  str6 = strdup("");
  str7 = strdup("A test.");
  str8 = strdup("test");
  str9 = strdup("One more");
  str10 = strdup("One More Test!");
  str11 = strdup("oNe moRE");
  str12 = strdup("e");

  printf("strlen(\"%s\") = %i\n\n", str1, strlen(NULL));

  printf("strcmp(\"%s\", \"%s\") = %i\n\n", str3, str4, strcmp(str3, str4));

  printf("strncmp(\"%s\", \"%s\") = %i\n\n", str4, str4, strncmp(str4, str4, 15));

  printf("strcasecmp(\"%s\", \"%s\") = %i\n\n", str3, str4, strcasecmp(str3, str4));

  printf("1rindex(\"%s\", 0) = *%s*\n\n", str3, rindex(str3, c1));

  printf("2rindex(\"%s\", 0) = *%s*\n\n", str6, rindex(str6, c1));
  
  printf("1strchr(\"%s\", 'n') = *%s*\n\n", str5, strchr(str5, c3));
  
  printf("2strchr(\"%s\", 'x') = *%s*\n\n", str6, strchr(str6, c3));

  printf("3strchr(\"%s\", 'X') = *%s*\n\n", str7, strchr(str7, 1337));
  
  printf("1strstr(\"%s\", \"%s\") = *%s*\n\n", str4, str8, strstr(str4, str8));

  printf("2strstr(\"%s\", \"%s\") = *%s*\n\n", str5, str5, strstr(str5, str5));

  printf("3strstr(\"%s\", \"%s\") = *%s*\n\n", str5, str9, strstr(str5, str9));

  printf("4strstr(\"%s\", \"%s\") = *%s*\n\n", str10, str9, strstr(str10, str9));

  printf("5strstr(\"%s\", \"%s\") = *%s*\n\n", str5, str11, strstr(str5, str11));

  printf("6strstr(\"%s\", \"%s\") = *%s*\n\n", str5, str12, strstr(str5, str12));

  printf("7strstr(\"%s\", \"%s\") = *%s*\n\n", str6, str6, strstr(str6, str6));

  printf("8strstr(\"%s\", \"%s\") = *%s*\n\n", str6, str7, strstr(str6, str7));

  printf("9strstr(\"%s\", \"%s\") = *%s*\n\n", str7, str6, strstr(str7, str6));

  return (0);
}
