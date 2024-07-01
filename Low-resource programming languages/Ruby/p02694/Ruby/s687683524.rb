X = gets.chomp.to_i
# A, B = gets.chomp.split.map(&:to_i)
# S = gets.chomp.chars

cnt = 0
start =100

while (start < X)
  start += start/100
  cnt += 1
end

p cnt