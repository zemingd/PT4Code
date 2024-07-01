N = gets.to_i
S = N.times.map { gets.chomp }

puts S.group_by { |s| S.count(s) }.values.last.reverse.uniq