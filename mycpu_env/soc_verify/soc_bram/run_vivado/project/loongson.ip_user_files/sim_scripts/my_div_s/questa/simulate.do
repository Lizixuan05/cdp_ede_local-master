onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib my_div_s_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {my_div_s.udo}

run 1000ns

quit -force
