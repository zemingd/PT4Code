n, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i).sort!
for i in 0..(m-1) do
  b, c = gets.chomp.split.map(&:to_i)
  for j in 0..(b - 1) do
    break if a[j] > c
    a[j] = c
  end
  a.sort!
end

a_sum = 0
a.each do |a_item|
  a_sum += a_item
end

puts a_sum