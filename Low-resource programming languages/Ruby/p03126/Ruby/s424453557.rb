n,m = gets.split(' ').map &:to_i
q = Array.new(30){ |i| i+1 }
n.times{ |i|
  l = gets.split(' ').map &:to_i
  l.shift
  q = q & l
}
p q.size
