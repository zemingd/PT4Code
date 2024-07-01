s={}
gets.to_i.times{
  x=gets.to_i
  if s[x]
    s[x] += 1
  else
    s[x] = 1
  end
}
a=0
s.each{|x, v|
  a+=1 if v % 2 == 0
}
p a