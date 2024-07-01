n, k = gets.split.map(&:to_i)
ps = gets.split.map(&:to_i)

max = sum = ps[0...k].inject(:+)

(n - k).times do |i|
  sum = sum - ps[i] + ps[i + k]
  max = sum if max < sum
end

puts (max + k) / 2.0