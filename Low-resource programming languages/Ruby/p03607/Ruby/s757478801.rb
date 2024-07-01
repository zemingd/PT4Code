n = gets.to_i

a = Hash.new(0)
n.times do
  a[gets.to_i] += 1
end

ans = 0
a.each do |k, v|
  ans += 1 if v.odd?
end
puts ans
