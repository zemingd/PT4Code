def lcm(numbers)
  numbers.inject(1) { |n, i| n.lcm(i) }
end

_, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

l = lcm(a)

if m < l / 2
  p 0
else
  p((m + l) / l)
end
