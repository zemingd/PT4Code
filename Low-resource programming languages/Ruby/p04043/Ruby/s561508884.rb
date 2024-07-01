L, N = gets.chomp.split.map(&:to_i)
S = N.times.map{ gets.chomp }

SS = S.sort
puts SS.join