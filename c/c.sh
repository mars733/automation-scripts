#!/usr/bin/env bash

set -e

name="$1"

# Check argument
if [[ -z "$name" ]]; then
    echo "Usage: c.sh <filename-without-extension>"
    exit 1
fi

file="${name}.c"
exe="$name"

# Create C file with boilerplate if missing
if [[ ! -f "$file" ]]; then
    echo "Creating $file..."
    cat <<EOF > "$file"
#include <stdio.h>

int main(void) {
    printf("Hello, world!\\n");
    return 0;
}
EOF
fi

# Open editor (nano fallback)
${EDITOR:-nano} "$file"

clear

# Compile
echo "Compiling $file..."
if clang -Wall -Wextra "$file" -o "$exe"; then
    echo "Compilation successful ✅"
    echo
    echo "--- Running $exe ---"
    ./"$exe"
else
    echo "Compilation failed ❌"
fi
