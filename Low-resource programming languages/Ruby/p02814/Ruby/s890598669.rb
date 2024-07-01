require 'prime'

n,m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

fact = Hash.new(0)
h2q = Hash.new(0)
n.times{|i|
  tmp = a[i].prime_division
  h2q[tmp[0][1]] += 1
  tmp.each{|x|
    max = fact[x[0]]
    max = x[1] if max < x[1]
    max -= 1 if x[0]==2
    fact[x[0]] = max
  }
}

if h2q.size>=2
  p 0
  exit
end

div = 1
fact.each{|(k,v)|
  v.times{
    div *= k
  }
}
p (m+div)/div/2
