n=gets.to_i
a=gets.split.map &:to_i
x=a.inject(:lcm)-1
p a.map{|e|x%e}.inject(:+)