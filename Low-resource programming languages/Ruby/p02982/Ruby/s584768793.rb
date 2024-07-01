n,d = gets.split.map(&:to_i)
x = n.times.map{gets.split.map(&:to_i)}
ans = 0
x.combination(2) do |i| 
  r2 = i[0].zip(i[1]).map{|a,b| (a-b)**2}.inject(:+)
  ans += 1 if Math.sqrt(r2).to_i**2 == r2
end 
p ans