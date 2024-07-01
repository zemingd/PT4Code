s = gets
s = s.split(" ")
d = gets.chomp.split.map(&:to_i)
n = gets

d[s.index(n.chomp)] -= 1

puts "#{d[0]} #{d[1]}"