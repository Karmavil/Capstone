all: format capstone

WARNINGS = -Wall
DEBUG = -ggdb -fno-omit-frame-pointer
OPTIMIZE = -O2

.PHONY: capstone
capstone:
	$(CC) -o build/$@ $(WARNINGS) $(DEBUG) $(OPTIMIZE) src/main.cpp

.PHONY: clean
clean:
	@rm -f build/capstone

.PHONY: install
# Builder will call this to install the application before running.
install:
	@echo "Installing is not supported"

.PHONY: run
# Builder uses this target to run your application.
run:
	./build/capstone

.PHONY: format
format:
	@clang-format -i src/*.cpp
# @clang-format -i include/*.h

