n, m, c = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)
a_ary = []
n.times do
  a_ary.push(gets.chomp.split(" ").map(&:to_i))
end
sum = 0
count = 0
a_ary.each_with_index do |a, index|
  m.times do |num|
    sum += a[num] * b[num]
  end
  sum += c
  if sum > 0
    count += 1
  end
  sum = 0
end
puts count