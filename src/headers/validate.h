#ifndef __VALIDATE_H__
#define __VALIDATE_H__


#include <stdio.h>

struct choice  {
 char hostarg[65];
 char logarg[17];
 short option_algorithm;
 int portarg;
 int redirectarg;
 int wafmode;
};

struct choice param;

void isnull_argv();


#endif
