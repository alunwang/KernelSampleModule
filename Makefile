# KVERS = $(shell uname -r)
CURDIR = $(shell pwd)
HEADER_DIR = /path/to/a/configured/kernel/source/tree # The kernel must have been configured, or will be error

# Kernle module
obj-m = hello_world.o

# Specify flags for compiling the module
# EXTRA_CFLAGS = -g -O0

build: kernel_modules
kernel_modules:
	# make -C /lib/modules/$(KVERS)/build M=$(CURDIR) modules
	make -C $(HEADER_DIR) M=$(CURDIR) modules

clean:
	make -C $(HEADER_DIR) M=$(CURDIR) clean