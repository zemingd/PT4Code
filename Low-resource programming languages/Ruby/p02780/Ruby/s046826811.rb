n, k = gets.split.map(&:to_i)
pp = gets.split.map{|e| (e.to_f + 1) / 2}

max = pp[0..k-1].inject(:+)
x = max
(n-k).times do |i|
    x += pp[i+k] - pp[i]
    max = x if max < x
end

puts max
