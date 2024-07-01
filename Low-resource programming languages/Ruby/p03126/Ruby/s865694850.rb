n,m = gets.split.map(&:to_i)

a = n.times.map{k,*b = gets.split.map(&:to_i);b}

ans = 0
m.times{|i|
  ans += 1 if a.map{|x| x.index(i+1)}.all?
}

p ans