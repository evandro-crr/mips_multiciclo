transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/stark/workspace/mips/vhdl/ula.vhd}
vcom -93 -work work {/home/stark/workspace/mips/vhdl/registrador.vhd}
vcom -93 -work work {/home/stark/workspace/mips/vhdl/operacaoULA.vhd}
vcom -93 -work work {/home/stark/workspace/mips/vhdl/multiplexador4x1.vhd}
vcom -93 -work work {/home/stark/workspace/mips/vhdl/multiplexador2x1.vhd}
vcom -93 -work work {/home/stark/workspace/mips/vhdl/mipsMulticiclo.vhd}
vcom -93 -work work {/home/stark/workspace/mips/vhdl/memoria.vhd}
vcom -93 -work work {/home/stark/workspace/mips/vhdl/extensaoSinal.vhd}
vcom -93 -work work {/home/stark/workspace/mips/vhdl/deslocadorEsquerda.vhd}
vcom -93 -work work {/home/stark/workspace/mips/vhdl/blocoOperativo.vhd}
vcom -93 -work work {/home/stark/workspace/mips/vhdl/blocoControle.vhd}
vcom -93 -work work {/home/stark/workspace/mips/vhdl/bancoRegistradores.vhd}
vcom -93 -work work {/home/stark/workspace/mips/vhdl/memoriaFPGA.vhd}

