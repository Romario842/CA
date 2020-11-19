transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {ex1.vo}

vlog -vlog01compat -work work +incdir+C:/CA/week\ 12 {C:/CA/week 12/add.v}
vlog -vlog01compat -work work +incdir+C:/CA/week\ 12 {C:/CA/week 12/alu_testbench.v}
vlog -vlog01compat -work work +incdir+C:/CA/week\ 12 {C:/CA/week 12/mux.v}
vlog -vlog01compat -work work +incdir+C:/CA/week\ 12 {C:/CA/week 12/srl.v}
vlog -vlog01compat -work work +incdir+C:/CA/week\ 12 {C:/CA/week 12/sub.v}
vlog -vlog01compat -work work +incdir+C:/CA/week\ 12 {C:/CA/week 12/ex1.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
