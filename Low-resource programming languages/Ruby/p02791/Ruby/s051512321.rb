gets
p = gets.split.map(&:to_i)
c = Float::INFINITY
ans = 0
p.each do |n|
  if n < c
    c = n
    ans += 1
  end
end
puts ans
