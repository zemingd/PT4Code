S = gets.chomp
T = gets.chomp

puts S.chars.zip(T.chars).count { |s, t| s == t }
