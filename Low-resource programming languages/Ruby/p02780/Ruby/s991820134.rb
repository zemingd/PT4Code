n, k = gets.split.map(&:to_i)
ps = gets.split.map(&:to_i)

max = sum = ps[0...k].inject(:+)

(k...n).each do |i|
  sum = sum - ps[i - k] + ps[i]
  max = sum if max < sum
end

puts (max + k) / 2