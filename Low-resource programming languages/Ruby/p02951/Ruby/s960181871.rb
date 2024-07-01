line = gets.chomp.split(" ").map(&:to_i)
a = line[0]
b = line[1]
c = line[2]

ans = c - (a - b)
ans = 0 if ans < 0

puts ans
