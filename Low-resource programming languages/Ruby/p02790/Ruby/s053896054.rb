a, b = gets.split.map(&:to_i)
str1 = a.to_s * b
str2 = b.to_s * a
puts str1[0] <= str2[0] ? str1 : str2