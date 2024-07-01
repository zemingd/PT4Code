n = gets.to_i
p = gets.chomp.split.map(&:to_i)
cnt = 0
(1..n-2).each do |i|
  if p[i] != [p[i-1],p[i],p[i+1]].max && p[i] != [p[i-1],p[i],p[i+1]].min
    cnt += 1
  end
end
puts cnt