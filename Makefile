SOURCES = $(wildcard src/*.cpp)
HEADERS = $(wildcard include/*.hpp)

all: format capstone

.PHONY: build
build: clean
	@mkdir build && cd build && cmake ..

.PHONY: recompile
recompile:
	@cd build && make

.PHONY: clean
clean:
	@rm -rf build

.PHONY: run
# Builder uses this target to run your application.
run:
	./build/capstone

.PHONY: format
format:
	@clang-format -i $(SOURCES)
	@clang-format -i $(HEADERS)

