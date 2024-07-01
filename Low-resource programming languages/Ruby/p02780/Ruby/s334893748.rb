def cin
  gets.split.map(&:to_i)
end

n, k = cin
p = cin.map { |pi| (pi + 1).to_f / 2 }

max = sum = p[0...k].inject(:+)

(k...n).each do |i|
  sum += p[i] - p[i - k]
  max = sum if sum > max
end

puts max