L, N = gets.chomp.split.map(&:to_i)
S = N.times.map{ gets.to_s }

puts S.sort.reduce(:+)