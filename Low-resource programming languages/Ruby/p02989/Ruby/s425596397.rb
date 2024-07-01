gets
inputs = gets.chomp.split.map{|x| x.to_i}

x = inputs.sort

puts x[x.size / 2] - x[x.size / 2 - 1]

STDOUT.flush
