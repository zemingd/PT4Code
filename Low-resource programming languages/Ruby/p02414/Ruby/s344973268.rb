line = STDIN.gets.split(" ")
size = Array.new(3) { |i| i = line[i].to_i}
matrixA = []
matrixB = []
matrixC = []

# matrixA
for i in 0..size[0] - 1 do
  line = STDIN.gets.split(" ")
  for j in 0..size[1] - 1 do
    # puts "i = #{i}, j = #{j}"
    line[j] = line[j].to_i
  end
  matrixA << line
  # print matrix
end
# print matrixA, "\n"

# matrixB
for i in 0..size[1] - 1 do
  line = STDIN.gets.split(" ")
  for j in 0..size[2] - 1 do
    # puts "i = #{i}, j = #{j}"
    line[j] = line[j].to_i
  end
  matrixB << line
  # print matrix
end
# print matrixB, "\n"

# calc
for i in 0..size[2] - 1 do
  line = []
  for j in 0..size[0] - 1 do
    sum = 0
    for k in 0..size[1] - 1 do
      # puts "i = #{i}, j = #{j}, k = #{k}"
      sum += matrixA[i][k] * matrixB[k][j]
    end
    # puts "sum = #{sum}"
    line << sum
  end
  puts line.join(" ")
end