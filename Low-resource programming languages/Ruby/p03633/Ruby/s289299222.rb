N = gets.to_i
TS = readlines.map { |l| l.chomp.to_i }
p TS.inject { |a, b| a.lcm(b) }