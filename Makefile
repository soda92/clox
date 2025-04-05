all: build
.PHONY: build

build: fmt
	cmake --preset windows
	cmake --build build
	gen_lsp_tdm

fmt:
	python scripts/run_format.py
