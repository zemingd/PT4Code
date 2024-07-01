n, k = gets.split(" ").map(&:to_i)
ary = gets.split(" ").map(&:to_i)
ary_rate = []

ary.each do |x|
  ary_rate << (x + 1) / 2.0
end

sum = ary_rate[0..(k-1)].inject(:+)
max = sum

(n - k).times do |i|
  sum = sum - ary_rate[i] + ary_rate[i+k]
  if sum > max
    max = sum
  end
end

puts max