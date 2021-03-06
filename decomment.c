/*---------------------------------------------------------------------
Decomment
Sahithi Tirumala

A program in which comments (in C) are recognized and removed from 
files.
---------------------------------------------------------------------*/

#include <stdio.h>
#include <ctype.h>
#include <stdlib.h>

enum Statetype {IN_CQUOTE, IN_SQUOTE, IN_NORMAL, IN_SLASH,
                IN_COMMENT, IN_ENDSTAR, IN_SPECIALC, IN_SPECIALS};

/* Handle state where text is normal (not a comment or quote) */
enum Statetype handleNormalState(int c)
{
   enum Statetype state;
   if (c == '/') {
      state = IN_SLASH;
   }
   else if (c == '\'') {
      putchar(c);
      state = IN_CQUOTE;
   }
   else if (c == '"') {
      putchar(c);
      state = IN_SQUOTE;
   }
   else {
      putchar(c);
      state = IN_NORMAL;
   }
   return state;
}

/* Handle state where we have enountered a slash */
enum Statetype handleSlashState(int c)
{
   enum Statetype state;
   if (c == '*') {
      putchar(' ');
      state = IN_COMMENT;
   }
   /* print the / as it is not part of a comment */
   else if (c == '/') {
      putchar(c);    
      state = IN_SLASH;
   }
   else if (c == '\'') {
      putchar('/');
      putchar(c);
      state = IN_CQUOTE;
   }
   else if (c == '"') {
      putchar('/');
      putchar(c);
      state = IN_SQUOTE;
   }
   else {
      putchar('/');
      putchar(c);
      state = IN_NORMAL;
   }
   return state;
}

/* Handle state where we have entered a comment (seen both / and *) */
enum Statetype handleCommentState(int c)
{
   enum Statetype state;
   if (c == '*') {
      state = IN_ENDSTAR;
   }
   else if (c == '\n') {
      putchar('\n');
      state = IN_COMMENT;
   }
   else {
      state = IN_COMMENT;
   }
   return state;
}

/* Handle state where we have approached an asterisk after we 
are in a  comment */
enum Statetype handleEndStarState(int c)
{
   enum Statetype state;
   if (c == '*') {
      state = IN_ENDSTAR;
   }
   else if (c == '/') {
      state = IN_NORMAL;
   }
   else if (c == '\n') {
      putchar(c);
      state = IN_COMMENT;
   }
   else {
      state = IN_COMMENT;
   }
   return state;
}

/*Handle state where we have entered a char literal (open ') */ 
enum Statetype handleCQuoteState(int c)
{
   enum Statetype state;
   if (c == '\'') {
      putchar(c);
      state = IN_NORMAL;
   }
   else if (c =='\\') {
      putchar(c);
      state = IN_SPECIALC;
   }
   else {
      putchar(c);
      state = IN_CQUOTE;
   }
   return state;
}

/* Handle state where we have entered a string literal (open ") */
enum Statetype handleSQuoteState(int c)
{
   enum Statetype state;
   if (c == '"') {
      putchar(c);
      state = IN_NORMAL;
   }
   else if (c == '\\') {
      putchar(c);
      state = IN_SPECIALS;
   }
   else {
      putchar(c);
      state = IN_SQUOTE;
   }
   return state;
}

/* Handle special character state (\) within char literal */
enum Statetype handleSpecialCState(int c)
{
   enum Statetype state;
   putchar(c);
   state = IN_CQUOTE;
   return state;
}

/* Handle special character state (\) within string literal */
enum Statetype handleSpecialSState(int c)
{
   enum Statetype state;
   putchar(c);
   state = IN_SQUOTE;
   return state;
}

/* combine functions to run program in main */
int main(void) {
   /* local variable for current character */
   int c;
   /* local variable keeping track of line # */
   int count;
   /* local variable noting the line a comment begin on */
   int commentCount;
   
   enum Statetype state;
   state = IN_NORMAL;     /* start in normal state by default */

   /* iterate through all char until EOF and switch states as needed */
   while ((c = getchar()) != EOF) {
      if (c == '\n') {
         count++;
      }
      
      switch (state) {
         case IN_NORMAL:
            state = handleNormalState(c);
            break;
         case IN_SLASH:
            state = handleSlashState(c);
            /* notes down which line a comment starts on*/
            if (state == IN_COMMENT) {
                commentCount = count + 1;
            }
            break;
         case IN_COMMENT:
            state = handleCommentState(c);
            break;
         case IN_ENDSTAR:
            state = handleEndStarState(c);
            break;
            case IN_CQUOTE:
            state = handleCQuoteState(c);
            break;
         case IN_SQUOTE:
            state = handleSQuoteState(c);
            break;
         case IN_SPECIALC:
            state = handleSpecialCState(c);
            break;
         case IN_SPECIALS:
            state = handleSpecialSState(c);
            break;
         }
   }
   /* account for / at the very EOF */
   if (state == IN_SLASH) {
      putchar('/');
   }
   
   /* If end of file is reached in a (unterminated) comment state, 
   return error. */
   if (state == IN_COMMENT || state == IN_ENDSTAR) {
      fprintf(stderr, "Error: line %d: unterminated comment\n",
              commentCount);
         exit(EXIT_FAILURE);
   }
   else {
      exit(EXIT_SUCCESS);
   }
}

