n = gets.to_i
f = []
(1..(Math.sqrt(n))).each do |a|
  if n%a == 0
    b = n/a
    f << [a, b]
  end
end
ans = []
count = 0
f.each do |n|
  num = n.max.to_s.length
  ans << num
end
puts ans.min
