d31 = [1, 3, 5, 7, 8, 10, 12]
d30 = [4, 6, 9, 11]
d28 = [2]

x, y = gets.split.map(&:to_i)

puts ((d31.include?(x) and d31.include?(y)) or (d30.include?(x) and d30.include?(y)) or (d28.include?(x) and d28.include?(y))) ? "Yes" : "No"