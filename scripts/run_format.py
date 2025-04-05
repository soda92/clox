import subprocess
from pathlib import Path


CURRENT = Path(__file__).resolve().parent.parent.joinpath("src")
source_files = list(CURRENT.glob("*.c"))
source_files.extend(list(CURRENT.glob("*.h")))

for file in source_files:
    subprocess.run(f"clang-format {file} -i".split(), check=True)
