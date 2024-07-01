n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)

sum = b.inject(:+)
pre = -100
n.times do |i|
  if a[i] == pre + 1
    sum += c[pre - 1]
  end

  pre = a[i]
end

puts sum