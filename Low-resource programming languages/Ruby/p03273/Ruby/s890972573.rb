n, k = gets.to_s.split.map{|t| t.to_i }
x    = gets.to_s.split.map{|t| t.to_i }

ans = (0..n-k).map do |t|
    l = x[t]
    r = x[t + k - 1]
    m = l.abs < r.abs ? l.abs : r.abs
    m + r - l
end.min

puts ans