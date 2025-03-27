# Compiler and flags
CXX := g++
CXXFLAGS := -std=c++17 -Wall -Wextra -pedantic

# Source and target
SRC := Assignment5.cpp
TARGET := Assignment5

# Default target (build and run)
all: build run

# Build the executable
build: $(SRC)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(SRC)

# Run the program
run:
	./$(TARGET)

# Clean up
clean:
	rm -f $(TARGET)

# Phony targets (not files)
.PHONY: all build run clean