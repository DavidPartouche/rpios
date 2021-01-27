cmake_minimum_required(VERSION 3.16)

set(CMAKE_TOOLCHAIN_FILE aarch64.cmake)

project(rpios C ASM)

add_executable(${PROJECT_NAME} src/boot.S src/kernel.c src/io.c)

set_target_properties(${PROJECT_NAME} PROPERTIES OUTPUT_NAME "${PROJECT_NAME}.elf")
add_custom_command(TARGET ${PROJECT_NAME} POST_BUILD COMMAND ${CMAKE_OBJCOPY} ARGS -O binary ${CMAKE_BINARY_DIR}/${PROJECT_NAME}.elf ${CMAKE_BINARY_DIR}/kernel8.img)