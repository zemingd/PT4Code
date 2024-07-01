N = gets.to_i
T = ('A' .. 'Z').to_a.rotate(N)
S = gets.chomp
puts S.chars.map{|c| T[(c.ord - 'A'.ord) % 26] }.join
