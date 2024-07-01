N = gets.to_i
S = N.times.map { gets.chomp }

puts S.reverse.max_by(2) { |s| S.count(s) }.uniq