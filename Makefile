# Makefile 1

full.exe: full.o
	gcc full.o -o full.exe

full.o: full.c
	gcc -c full.c

# Makefile 2

main.exe: main.o functions.o
	gcc main.o functions.o -o main.exe

main.o: main.c
	gcc -c main.c

functions.o: functions.c
	gcc -c functions.c

# # Makefile 3

main.exe: main.o functions.o
	gcc main.o functions.o -o main.exe

%.o : %.c
	gcc -c $<

# # Makefile 4

OBJ = main.o functions.o

main.exe: $(OBJ)
	gcc $(OBJ) -o main.exe

%.o : %.c
	gcc -c $<

# # Makefile 5
CC = gcc
CFLAGS = -Wall -Wextra
OBJ = main.o functions.o

main.exe: $(OBJ)
	$(CC) $(OBJ) -o main.exe

%.o : %.c
	$(CC) $(CFLAGS) -c $<

clean:
	rm -f $(OBJ) main.exe

# # Makefile 6
# # Compiler
CC = gcc

# Compiler flags
CFLAGS = -Wall -Wextra

# Source files
SRC = main.c functions.c

# Object files
OBJ = $(SRC:.c=.o)

# Executable name
EXECUTABLE = main.exe

# Default target
all: $(EXECUTABLE)

# Compile source files into object files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Link object files into the executable
$(EXECUTABLE): $(OBJ)
	$(CC) $(OBJ) -o $@

# Clean up
clean:
	rm -f $(OBJ) $(EXECUTABLE)
