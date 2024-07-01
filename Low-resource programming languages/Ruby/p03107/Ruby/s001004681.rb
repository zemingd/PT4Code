instr = gets
puts [instr.scan('0').size, instr.scan('1').size].min*2
