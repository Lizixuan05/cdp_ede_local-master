

OUTPUT_ARCH(loongarch)
ENTRY(_start)
SECTIONS
{

  . = 0x1c000000;
  .text :
  {
    *(.text)
    *(.rodata*)
    *(.reginfo)
    *(.init)
    *(.stub)

    *(.gnu.warning)
  } =0
}
