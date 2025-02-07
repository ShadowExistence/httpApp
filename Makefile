# The compiler to use
CC=g++

# Compiler flags
CFLAGS=-c -Wall -std=c++11
    # -c: Compile or assemble the source files, but do not link.
    # The linking stage simply is not done.
    # The ultimate output is in the form of an object file
    # for each source file.
    #
    # -Wall: This enables all the warnings about constructions that
    # some users consider questionable, and that are easy to avoid
    # (or modify to prevent the warning), even in conjunction with macros.

# Linker flags
# LDFLAGS=

# Libraries
LIBS=-L/home/Documents/stealth/szkola/oop/httpApp/curlpp -lcurlpp -lcurl

# Name of executable output
TARGET=a
SRCDIR=./src
BUILDDIR=./bin

OBJS := $(patsubst %.cpp,%.o,$(shell find $(SRCDIR) -name '*.cpp'))

all: makebuildir $(TARGET)

$(TARGET) : $(OBJS)
	$(CC) -o $(BUILDDIR)/$@ $(OBJS) $(LIBS)


clean :
	rm -rf $(BUILDDIR)
	rm -f $(OBJS)

makebuildir:
	mkdir -p $(BUILDDIR)