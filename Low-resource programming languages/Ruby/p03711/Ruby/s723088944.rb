x, y = gets.split.map(&:to_i)
g1 = [1, 3, 5, 7, 8, 10, 12]
g2 = [4, 6, 9, 11]
g3 = [2]
f = false
if g1.include?(x) && g1.include?(y)
  f = true
elsif g2.include?(x) && g2.include?(y)
  f = true
elsif g3.include?(x) && g3.include?(y)
  f = true
end
puts f ? "Yes" : "No"
