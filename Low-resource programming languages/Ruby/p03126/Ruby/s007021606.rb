n, m = gets.split.map(&:to_i)
set = (1..m).to_a
n.times do
  k, *arr = gets.split.map(&:to_i)
  set &= arr
end

puts set.size
