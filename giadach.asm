SECTION .data
buf: db "./", 0
SECTION .text
global _start

_start:
xor eax, eax
xor edx, edx
push eax
push long 0x6d69762f    ; "miv/"
push long 0x6e69622f    ; "nib/"
mov ebx, esp
push eax
push byte 0x2f
mov esi, esp

push eax
push esi
push ebx
mov ecx, esp
mov eax, 0x0b
int 0x80

mov eax, 1
int 0x80

;así giadach abre vim
