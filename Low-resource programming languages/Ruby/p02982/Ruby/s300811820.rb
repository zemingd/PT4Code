n,d = gets.split.map(&:to_i)
x = Array.new(n,[])
n.times do |i|
  x[i] = gets.split.map(&:to_i)
end
count = 0
x.combination(2).to_a.each do |xx|
  count += 1 if ((xx.reduce {|sum,i|sum+=(i[0]-i[1])**2}) ** (1/2.0)).integer?
end
ptus count