require 'prime'
n,m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

lcm = a.map{|i|i/2}.sort.reverse.inject{|s,r|s.lcm(r)}

if a.map{|i|i.prime_division.assoc(2)||0}.uniq.size != 1
  ans = 0
else
  ans = (m-lcm)/(lcm*2)+1
end
p ans