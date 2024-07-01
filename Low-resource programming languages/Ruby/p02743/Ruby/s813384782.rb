input = gets.split.map(&:to_i)
a, b ,c = input[0].to_i, input[1].to_i, input[2].to_i
puts a ** 0.5 + b ** 0.5 < c ** 0.5 ? 'Yes' : 'No'