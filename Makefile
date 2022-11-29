export MALLOC_MMAP_THRESHOLD_=1
export MALLOC_CHECK_=1
export MALLOC_PERTURB_=1
CC=gcc
CFLAGS=-g -W -Wall -O1
HARDENING= -fstack-protector-all -pie -fPIE -ftrapv
DFLAGS= lib/BSD/strsec.c
DIR=src/
DIR_HEADERS=src/headers/
DIROUT=bin/
UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Darwin)
	LDFLAGS=-Wl -lpthread -lpcre
else
	LDFLAGS=-Wl,-z,relro,-z,now -lpthread -std=c99 -lpcre
endif

Raptor: $(DIR)Raptor.c 
	@echo "           boing         boing         boing           "   
	@echo " e-e           . - .         . - .         . - .        "  
	@echo "(\_/)\       '       \`.   ,'       \`.   ,'       .      "  
	@echo " \`-'\ \`--.___,         . .           . .          .     "  
	@echo "    '\( ,_.-'                                           "  
	@echo "       \\               \"             \"          Compile !"    
	@echo "       ^\' "
	$(CC) $(CFLAGS) $(DFLAGS) -c $(DIR)*.c -I$(DIR_HEADERS) -Ilib
	$(CC) -o $(DIROUT)Raptor *.o $(LDFLAGS) $(HARDENING) 
	$(shell make clean)
	@echo "  "
	@echo " Execute \"bin/Raptor\" to start...  "   
clean:
	rm -f *.o Raptor
	



