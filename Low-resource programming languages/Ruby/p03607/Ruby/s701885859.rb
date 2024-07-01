n = gets.to_i
as = n.times.map{gets.to_i}.sort
corrent = as.shift
res = 1
ans = 0
as.each do |a|
  if corrent == a
    res += 1
  else
    ans += 1 if res.odd?
    corrent = a
    res = 1
  end
end
ans += 1 if res.odd?
puts ans
