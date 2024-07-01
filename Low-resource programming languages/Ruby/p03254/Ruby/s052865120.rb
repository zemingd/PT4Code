N, X = gets.chomp.split(" ").map(&:to_i)
Ax = gets.chomp.split(" ").map(&:to_i)

ax = Ax.sort

count = 0
amount = 0
loop do
  amount += ax.shift
  break if amount > X
  if ax.size == 0
    count += 1 if amount == X
    break
  end
  count += 1
end

puts count
