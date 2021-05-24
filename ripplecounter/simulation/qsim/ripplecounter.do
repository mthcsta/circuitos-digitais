onerror {exit -code 1}
vlib work
vlog -work work ripplecounter.vo
vlog -work work Waveform1.vwf.vt
vsim -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.ripplecounter_vlg_vec_tst
vcd file -direction ripplecounter.msim.vcd
vcd add -internal ripplecounter_vlg_vec_tst/*
vcd add -internal ripplecounter_vlg_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f

