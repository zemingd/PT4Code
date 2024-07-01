a, b = gets.chomp.split.map(&:to_i)
data = []
data[0] = a + b
data[1] = a - b
data[2] = a * b
print(data.max())