N = gets.to_i
A = gets.chomp.split.map(&:to_i)
Q = gets.to_i
ary = Q.times.map{gets.split.map(&:to_i)}
h = Array.new(10**5, 0)
A.each do |e|
  h[e] += 1
end


ans = A.sum

(0..Q-1).each do |i|
  x = ary[i][0]
  y = ary[i][1]
  ans += h[x]*(y-x)
  puts ans
  h[y] += h[x]
  h[x] = 0
end
