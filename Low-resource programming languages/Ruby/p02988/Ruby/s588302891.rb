n = gets.to_i
p = gets.split.map(&:to_i)
result = 0
(1..n-2).each do |i|
  ary = [p[i-1],p[i],p[i+1]]
  if ary.max != p[i] && ary.min != p[i]
    result += 1
  end
end
puts result