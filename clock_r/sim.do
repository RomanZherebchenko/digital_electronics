###########################
# Simple modelsim do file #
###########################

# Delete old compilation results
if { [file exists "work"] } {
    vdel -all
}

# Create new modelsim working library

vlib work

# Compile all the Verilog sources in current folder into working library

vlog  hw/clock/dec_7seg.v hw/clock/counter.v hw/clock/clock.v hw/clock/clock_tb.v

# Open testbench module for simulation

vsim -novopt work.clock_tb

# Add all testbench signals to waveform diagram

add wave /clock_tb/clock_inst/*

onbreak resume

# Run simulation
run -all

wave zoom full


