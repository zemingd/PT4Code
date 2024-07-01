n = gets.to_i
w = gets.split.map{|e| e.to_i}

l = 0
r = w.sum
ans = r

(n-1).times do |i|
    l += w[i]
    r -= w[i]
    x = (l - r).abs
    ans = x if ans > x
end

puts ans