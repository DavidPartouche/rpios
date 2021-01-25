cmake_minimum_required(VERSION 3.16)
project(rpios C)

set(CMAKE_C_FLAGS "-Wall -nostdlib -nostartfiles -ffreestanding -mgeneral-regs-only")

add_executable(rpios main.c)
set_target_properties(rpios PROPERTIES LINK_DEPENDS "src/linker.ld")

add_custom_command(TARGET rpios POST_BUILD COMMAND "aarch64-linux-gnu-objcopy ${CMAKE_BINARY_DIR}/rpios -O binary kernel8.img")