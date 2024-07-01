n = gets.to_i
h = gets.split.map(&:to_i)

max = h[0]
ans = 0
h.each do |v|
  ans += 1 if max <= v
  max =[max, v].max
end

puts ans
