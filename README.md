# Low-Level Programming

This repo contains the implementation of the algorithms described in the book Low-Level Programming - C, Assembly, and Program Execution on
Intel® 64 Architecture, by Igor Zhirkov.

All the algorithms are written using x86-64 archicture and Linux syscalls.

The compilation process follows theses steps:

  nasm -felf64 <inputAsmProgramName.asm> -o <outputObjectFile.o>
  ld -o <outputExecutable> <inputObjectfile.o>
  chmod u+x <filename>
  
For instance:

  nasm -felf64 helloWorld.asm -o helloWorld.o
  ld -o helloWorld helloWorld.o
  chmod u+x helloWorld
  
To execute the file:

  ./<executableFileName>
  
Have fun!

If you are using an i386 architecture processor (32-bit), you'll have to change the code significantly, since the ABI (Application Binary Interface) is significantly different - different registers are used as syscall arguments an such. In the future, I plan to add x86 (32-bit architecture) programs as well.

Cheers!