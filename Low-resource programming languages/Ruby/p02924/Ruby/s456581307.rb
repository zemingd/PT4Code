STDOUT.flush
num = gets.to_i
puts (1..num-1).inject(:+)
