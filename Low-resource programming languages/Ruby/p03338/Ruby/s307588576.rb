_=gets
S=gets.chomp.split("")
es = []
("a".."z").each{ |c|
  l,r = S.index(c),S.rindex(c)
  next if !l || l == r
  es << [r,-1]
  es << [l,+1]
}
ans = 0
s = 0
es.sort.each{ |x,t|
  s += t
  ans = [ans,s].max
}
p ans