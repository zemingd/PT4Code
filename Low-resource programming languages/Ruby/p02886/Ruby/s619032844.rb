n = gets.to_i
d = gets.split.map(&:to_i)
ans = 0
0.upto(d.length-2) do |i|
  (i+1).upto(d.length-1) do |j|
    ans += d[i] * d[j]
  end
end
puts ans