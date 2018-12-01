# learn-assembly #

Here is a repository containing work that I have done to learn some basics of the assembly language.

## Assembler ##

We use nasm on an AMD x86-64 processor, but the tutorial used is based on 32 bit processors.

## Notes ##

Three sections:
* data section  -> section.data 
    * Declaring initialized data or constants.
* bss section -> section.bss
    * Declaring variables.
*text section -> section.text
    * Keeping the actual code.  
    * Must begin with global_start to tell the kernel where execution begins.

Comments:
* To comment, use semicolon.


# Reference Material ##

Here is the tutorial used : 
    https://www.tutorialspoint.com/assembly_programming/index.htm
