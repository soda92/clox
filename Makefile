all: build
.PHONY: build

build:
	cmake --preset windows
	cmake --build build
	gen_lsp_tdm

fmt:
	python run_format.py
