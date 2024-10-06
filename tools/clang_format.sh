#!/bin/bash

# Run clang-format on all .c, .cpp, .h, and .hpp files in the specified directory
SRC_DIR="motor_controller/motor_controller/Src"
find $SRC_DIR -regex '.*\.\(c\|cpp\|h\|hpp\)' -exec clang-format -i {} \;

# Add a success message
echo "Code formatted using clang-format in $SRC_DIR."
