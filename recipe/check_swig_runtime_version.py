import re
import sys

# copied from the pybind11 recipe w/ some changes
# see https://github.com/conda-forge/pybind11-feedstock/blob/main/recipe/check_abi.py
SRTV_RE = re.compile(r'#\s*define\s+SWIG_RUNTIME_VERSION\s+"?(\d+)"?')

expected_swig_runtime_version = sys.argv[1]

with open("Lib/swigrun.swg") as fp:
    text = fp.read()

mat = SRTV_RE.search(text)

if not mat:
    print("Could not find SWIG_RUNTIME_VERSION!", file=sys.stderr)
    raise SystemExit(1)

found = mat.group(1)
if found != expected_swig_runtime_version:
    print(
        f"SWIG_RUNTIME_VERSION mismatch: found {found}, expected {expected_swig_runtime_version}",
        file=sys.stderr,
    )
    sys.exit(2)

print("SWIG_RUNTIME_VERSION matched!", file=sys.stderr)
