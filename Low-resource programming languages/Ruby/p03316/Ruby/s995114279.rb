N = gets.chomp.to_i
s = 0

N.to_s.each_char{|n| s += n.to_i }

puts N % s == 0 ? 'Yes' : 'No'