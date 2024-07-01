N = gets.to_i
S = gets.chomp

puts S.chars.map { |c| (((c.ord - 65 + N) % 26) + 65).chr }.join
