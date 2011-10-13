#
# Makefile for SICP exercise source code
#
# This Makefile implements a pattern for compiling 1 Scheme source file to 1
# corresponding binary, using the Chicken Scheme Compiler.
#
# src/foo.scm -> bin/foo
# src/bar.scm -> bin/bar
# etc.
#
# The Makefile will not require maintenance as new Scheme files get saved to the
# source directory.
#
# It supports the following targets:
# 
# make all
#     Build and run all source files.  This is the default target.
# make clean
#     Delete all output from a prior make.
# make foo
#     Build src/foo.scm to executable bin/foo.  This works for any individual
#     file name.

#
# macros
#

BIN = bin
TARGET_NAMES = $(addprefix $(BIN)/,$(basename $(notdir $(wildcard $(SRC)/*.scm))))
SCHEME = csc
SRC = src

#
# targets
#

# inference rule:
# for any target foo, compile source foo.scm file to executable foo file
$(BIN)/%: $(SRC)/%.scm
	@mkdir -p $(BIN)
	$(SCHEME) $(SRC)/$*.scm -o $(BIN)/$*

# inference rule:
# for any otherwise unmatched target, just alias it to the above rule
%: $(BIN)/% ;

all: $(TARGET_NAMES)

clean:
	rm -rf $(BIN)

#
# special targets
#

.IGNORE: clean

.PHONY: clean

.SILENT: bin clean
