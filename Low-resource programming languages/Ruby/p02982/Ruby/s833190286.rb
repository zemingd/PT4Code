n,d = gets.chomp.split(" ").map(&:to_i)
 x = Array.new(n).map{Array.new}
n.times do |i|
  x[i] = gets.chomp.split(" ").map(&:to_i)
end

c = x.combination(2)
ans = 0
c.each do |p|
  len = p[0].length
  sum = 0
  for i in 0..len-1
    sum += (p[0][i] - p[1][i])**2.0
  end
  d = sum ** 0.5
  p d
  if d.to_s =~ /^[0-9]+(\.0)?$/
    ans += 1
  end
end
puts ans