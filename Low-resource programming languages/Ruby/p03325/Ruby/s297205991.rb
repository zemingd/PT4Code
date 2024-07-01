N = gets.to_i
A = gets.split.map(&:to_i)
puts A.inject(0){|s,a| s + a.bit_length.times.find{|i| a[i] == 1 } }