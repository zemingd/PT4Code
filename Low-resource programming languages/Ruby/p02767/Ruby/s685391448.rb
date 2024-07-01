n = gets.to_i
X = gets.chomp.split(" ", n).map(&:to_i)

max = X.max
min = X.min
ans = Float::INFINITY

(min..max).each do |i|
  cost = 0
  X.each do |x|
    cost += (x - i) ** 2
  end
  if ans > cost
    ans = cost
  end
end

p ans