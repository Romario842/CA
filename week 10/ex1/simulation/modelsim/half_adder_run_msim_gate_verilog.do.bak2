transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {half_adder.vo}

vlog -vlog01compat -work work +incdir+C:/CA/week\ 10/ex1 {C:/CA/week 10/ex1/half_adder.v}
vlog -vlog01compat -work work +incdir+C:/CA/week\ 10/ex1 {C:/CA/week 10/ex1/testbench.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  testbench

do C:/CA/week 10/ex1/Tcl_script.tcl
