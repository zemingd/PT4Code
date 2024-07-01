n = gets.to_i
s = gets.chomp

ans = 0
n.times{|i|
  x = s[0...i]
  y = s[i..-1]
  res = (?a..?z).to_a.map{|t|
    !!x.index(t)&&!!y.index(t)
  }.count(true)
  ans = res if ans < res
}

p ans
