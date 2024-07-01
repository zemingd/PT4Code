n = gets.to_i
a = gets.split.map(&:to_i)

l = 1
a.each{|t| l = t.lcm(l)}
p a.map{|t| (l-1)%t}.inject(:+)
