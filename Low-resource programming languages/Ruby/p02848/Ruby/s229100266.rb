N = gets.to_i
S = gets.chomp.chars
puts S.map { |s| N.times.reduce(s) { |a, _| a.next[0] } }.join