n,x = gets.chomp.split.map(&:to_i)
total = n
min = 0
for i in 1..n do
  input = gets.to_i
  min = input if (min > input) or (i == 1)
  x -= input
end

puts total + x / min 
