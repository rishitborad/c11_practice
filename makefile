CXX=c++

SRC_DIR := src
OBJ_DIR := out
BIN_DIR := bin

EXE := practice
SRC := $(wildcard $(SRC_DIR)/*.cpp)
OBJ := $(SRC:$(SRC_DIR)/%.cpp=$(OBJ_DIR)/%.o)

CPPFLAGS := -Iinc -MMD -MP -Wall -std=c++11
CFLAGS := -Wall
LDFLAGS := -Llib
LDLIBS := -lm

PHONY: all clean

TARGET=practice


all: $(OBJ_DIR)/$(TARGET)

$(OBJ_DIR)/practice:$(BIN_DIR)/copyConstructor.o $(BIN_DIR)/main.o
	$(CXX) $(CPPFLAGS) -o practice copyConstructor.o main.o

$(BIN_DIR)/copyConstructor.o: $(SRC_DIR)/copyConstructor.cpp
	$(CXX) $(CPPFLAGS) -c $(SRC_DIR)/copyConstructor.cpp

$(BIN_DIR)/main.o: $(SRC_DIR)/main.cpp
	$(CXX) $(CPPFLAGS) -c $(SRC_DIR)/main.cpp

$(BIN_DIR) $(OBJ_DIR):
	mkdir -p $@

clean:
	${RM} -rv $(BIN_DIR) $(OBJ_DIR)
