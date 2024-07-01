n, x = gets.split.map(&:to_i)
m = []
n.times do
  m.push gets.chomp.to_i
end
sum = m.reduce(:+)
min = m.min
puts n + (x - sum) / min
