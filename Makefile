CRYSTAL_BIN ?= $(shell which crystal)
SHARDS_BIN ?= $(shell which shards)

INSTALL_PREFIX ?= /usr/local

BUILD_TARGET ?= ./src/snatch.cr
BUILD_OUTPUT_FOLDER ?= ./bin
BUILD_OUTPUT_NAME ?= ./app
BUILD_OUTPUT ?= $(BUILD_OUTPUT_FOLDER)/$(BUILD_OUTPUT_NAME)

clean:
	rm -rf $(BUILD_OUTPUT_FOLDER)
	mkdir $(BUILD_OUTPUT_FOLDER)
build: clean
	crystal build $(BUILD_TARGET) -o $(BUILD_OUTPUT)
	rm -f $(BUILD_OUTPUT).dwarf
run: build
	time $(BUILD_OUTPUT)
cocoarun:
	sh scripts/export.sh