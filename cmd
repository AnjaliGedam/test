cd ~/Documents/R_T/Github/cva6_1/cva6
make verilate
work-ver/Variane_testharness rv64um-v-divuw
work-ver/Variane_testharness $RISCV/riscv64-unknown-elf/bin/pk /home/thales/Documents/R_T/Github/riscv-tools/hello.elf

work-ver/Variane_testharness -v hello3.vcd $RISCV/riscv64-unknown-elf/bin/pk /home/thales/Documents/R_T/Github/riscv-tools/hello3.elf
ll -h hello3.vcd
gtkwave hello3.vcd

spike asm
$RISCV/bin/riscv64-unknown-elf-gcc -nostdlib -nostartfiles -T spike.lds  bootload.S -o bootload.elf


gvim hello_asm2.S
$RISCV/bin/riscv64-unknown-elf-gcc -c hello_asm2.S
$RISCV/bin/riscv64-unknown-elf-ld hello_asm2.o
thales@THI-LAP-0292:~/Documents/R_T/Github/riscv-tools$ spike $RISCV/riscv64-unknown-elf/bin/pk a.out

