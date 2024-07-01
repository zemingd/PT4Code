_ = gets.to_i
a = gets.split.map(&:to_i)
x=a.first
a[1..-1].each{x=x.lcm(_1)}
x-=1
ans = 0
a.each{ans+=x%_1}
puts ans