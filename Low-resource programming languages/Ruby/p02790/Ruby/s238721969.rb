a,b = gets.chomp.split(' ').map(&:to_i)
answer << (a.to_s)*b
answer << (b.to_s)*a
puts answer.sort.first