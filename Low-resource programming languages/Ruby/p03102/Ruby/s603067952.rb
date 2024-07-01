n, m, c = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
count = 0
sum = 0
n.times do
  a = gets.split.map(&:to_i)
  sum = 0
  a.each_with_index do |k, i|
    sum += (k * b[i])
  end
  if (sum + c) > 0
    count += 1
  end
end
puts count