TARGET = Colleen

CC = gcc
CFLAGS = -Werror -Wextra -Wall -Iinclude

SOURCES = Colleen.c
#SOURCES = $(addprefix src/, $(SOURCE_FILES))

OBJECTS = $(SOURCES:.c=.o)


HEADER_FILES = 
#HEADERS = $(addprefix include/, $(HEADER_FILES))

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(info $(OBJECTS))
	$(CC) $(CFLAGS) $(OBJECTS) -o $(TARGET)

%.o: %.c $(HEADERS)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJECTS)

fclean: clean
	rm -f $(TARGET)

re: fclean all