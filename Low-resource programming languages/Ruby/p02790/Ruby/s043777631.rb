a,b = gets.chomp.split().map(&:to_i)
m = [a,b].max
s = [a,b].min

puts(s.to_s * m)