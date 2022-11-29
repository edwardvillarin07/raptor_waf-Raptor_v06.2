
#ifndef __RULE_H__
#define __RULE_H__

#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <strings.h>
#include <stdbool.h>
#include <errno.h>
#include <pthread.h>
#include <time.h>
#include "utils.h"
#include "mem_ops.h"
#include "file_ops.h"
#include "blacklist.h"
#include "matchlist.h"

bool Judge_malicious(char *buf, const int BUF_SIZE,char *addr, char *logfile, int wafmode,short match_option);

#endif
