#!/bin/bash
name=$1   #hello

# Check if a filename was provided
if [ -z "$name" ]; then
    echo "Usage: bash c.sh filename"
    exit 1
fi
#Adding .c extension in name 
file="${name}.c" #file = hello.c

# Create the file if it doesn't exist
if [ ! -f "$file" ]; then
    echo "Creating $file with boilerplate..."
    cat <<EOF > "$file"

#include <stdio.h>

int main() {
    printf("Hello world\n");
    return 0;
}
EOF
fi

# Open editor
nano "$file"

#clear screen
clear

# Compile and Run
if clang "$file" -o "$name"; then
    echo -e "\n--- Running $name ---"
    ./"$name"
    echo -e "\n"
else
    echo "Compilation failed."
fi

