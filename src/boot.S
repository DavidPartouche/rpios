
.section ".text.boot"
.global _start

_start:
    // Check processor ID is zero
    mrs x1, mpidr_el1
    and x1, x1, #3
    cbz x1, 2f

1:
    // Infinite wait loop if we're not on main core
    wfe
    b 1b

2:
    // Set stack pointer to start below our code
    ldr x1, =_start
    mov sp, x1

    // Clean the BSS
    ldr x1, =__bss_start
    ldr x2, =__bss_size
3:
    cbz w2, 4f // Quit loop zero
    str xzr, [x1], #8
    sub w2, w2, #1
    cbnz w2, 3b // loop if non-zero

4:
    // Jump to our main() routine in C
    bl main
    // Shouldn't return
    b 1b
