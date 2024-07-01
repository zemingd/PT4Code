N = gets.to_i
S = gets.strip

puts S.chars.map{|s| ((s.ord - 'A'.ord + N) % 26 + 'A'.ord).chr}.join