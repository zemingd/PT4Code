n = gets.to_i
d = gets.split.map(&:to_i)
mul = 0
max = 0
roots = Array.new(100000,0)
d.each do |i|
  roots[i] += 1
  max = i if max < i
end
mul = 1 if d[0] == 0 && roots[0] == 1
1.upto(max) do |i|
  mul *= roots[i-1]**roots[i]
end
puts mul % 998244353