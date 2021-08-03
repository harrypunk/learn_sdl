#OBJS specifies which files to compile as part of the project
OBJS = hellosdl.cpp

#CC specifies which compiler we're using
CC = clang++

#COMPILER_FLAGS specifies the additional compilation options we're using
# -w suppresses all warnings
COMPILER_FLAGS = -w

#LINKER_FLAGS specifies the libraries we're linking against
LINKER_FLAGS = -lSDL2

#OBJ_NAME specifies the name of our exectuable
OBJ_NAME = hello

#sdl2 headers under homebrew
SDL_INCLUDE=/usr/local/Cellar/sdl2/2.0.14_1/include/SDL2

#This is the target that compiles our executable
all : $(OBJS)
	$(CC) $(OBJS) $(COMPILER_FLAGS) $(LINKER_FLAGS) -I$(SDL_INCLUDE) -o build/$(OBJ_NAME)
