n,d = gets.split.map(&:to_i)
dots = []
n.times {dots << gets.split.map(&:to_i)}
ans = 0
(0...n-1).each do |i|
  (i+1..n-1).each do |j|
    l = 0
    [dots[i],dots[j]].transpose.each {|a,b| l += (a-b)**2}
    ans += 1 if Integer.sqrt(l)**2 == l
  end
end
puts ans
