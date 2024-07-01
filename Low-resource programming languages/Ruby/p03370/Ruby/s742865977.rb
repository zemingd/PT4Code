n, x = gets.chomp.split(' ').map(&:to_i)
min = 0
sum = 0
n.times do
  tmp = gets.chomp.to_i
  min = tmp if min > tmp || min == 0
  sum += tmp
end

print ((x - sum) / min) + n