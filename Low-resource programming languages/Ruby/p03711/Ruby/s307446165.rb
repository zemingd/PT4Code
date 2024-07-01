x, y = gets.chomp.split.map(&:to_i)
group = [[1, 3, 5, 7, 8, 10, 12], [4, 6, 9, 11], [2]]
judge = group.inject(false){|flag, i| flag = true if i.include?(x) && i.include?(y); flag}
puts judge ? "Yes" : "No"