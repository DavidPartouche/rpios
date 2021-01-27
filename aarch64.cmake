set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR aarch64)

set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

set(CMAKE_AR /opt/gcc-aarch64-none-elf/bin/aarch64-none-elf-ar)
set(CMAKE_ASM_COMPILER /opt/gcc-aarch64-none-elf/bin/aarch64-none-elf-as)
set(CMAKE_C_COMPILER /opt/gcc-aarch64-none-elf/bin/aarch64-none-elf-gcc)
set(CMAKE_CXX_COMPILER /opt/gcc-aarch64-none-elf/bin/aarch64-none-elf-cpp)
set(CMAKE_LINKER /opt/gcc-aarch64-none-elf/bin/aarch64-none-elf-ld)
set(CMAKE_OBJCOPY /opt/gcc-aarch64-none-elf/bin/aarch64-none-elf-objcopy)
set(CMAKE_RANLIB /opt/gcc-aarch64-none-elf/bin/aarch64-none-elf-ranlib)
set(CMAKE_SIZE /opt/gcc-aarch64-none-elf/bin/aarch64-none-elf-size)
set(CMAKE_STRIP /opt/gcc-aarch64-none-elf/bin/aarch64-none-elf-strip)

set(CMAKE_C_FLAGS "-Wall -O2 -ffreestanding -nostdinc -nostdlib -nostartfiles")
set(CMAKE_EXE_LINKER_FLAGS "-nostdlib -nostartfiles -T ${CMAKE_SOURCE_DIR}/src/linker.ld")

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

