#include "scanner.h"
#include "common.h"
#include <stdio.h>
#include <string.h>

typedef struct {
  const char* start;
  const char* current;
  int line;
} Scanner;

Scanner scanner;

void initScanner(const char* source) {
  scanner.start = source;
  scanner.current = source;
  scanner.line = 1;
}

Token scanToken(){
  scanner.start=scanner.current;

  if(isAtEnd()) return makeToken(TOKEN_EOF);

  return errorToken("Unexpected character.");
}

