N = gets.to_i
S = gets.chomp
puts N.times.count{|offset| S[offset,3] == 'ABC' }

