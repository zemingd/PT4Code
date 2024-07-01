s=[]
gets.split.each{|c|
  case c
  when ?+
    a,b=s.pop(2)
    s<< a + b
  when ?-
    a,b=s.pop(2)
    s<< a - b
  when ?*
    a,b=s.pop(2)
    s<< a * b
  else
    s<< c.to_i
  end
}
p s[0]


