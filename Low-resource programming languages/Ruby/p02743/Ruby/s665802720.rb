# K = gets.chomp.to_i
# A = [1, 1, 1, 2, 1, 2, 1, 5, 2, 2, 1, 5, 1, 2, 1, 14, 1, 5, 1, 5, 2, 2, 1, 15, 2, 2, 5, 4, 1, 4, 1, 51]
a, b, c = gets.chomp.split.map(&:to_i)
# S = gets.chomp.chars

# p [Math.sqrt(a), Math.sqrt(b), Math.sqrt(c)]
left = a * b * 4
right = (c - a - b) * (c - a - b)
ans = c > (a+b) && left < right

if ans
  print "Yes\n"
else
  print "No\n"
end