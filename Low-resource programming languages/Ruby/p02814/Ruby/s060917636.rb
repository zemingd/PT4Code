require 'prime'

n,m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

fact = 1
h2q = Hash.new(0)
n.times{|i|
  tmp = a[i].prime_division
  h2q[tmp[0][1]] += 1
  fact = fact.lcm(a[i]/2)
}

if h2q.size>=2
  p 0
  exit
end

div = fact
p (m+div)/fact/2
