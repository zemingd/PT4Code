a, b, c, d = gets.chomp.split(" ").map(&:to_i)

start = c > a ? c : a
last = b > d ? d : b

ans = last - start > 0 ? last - start : 0

puts ans