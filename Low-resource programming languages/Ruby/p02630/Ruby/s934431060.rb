gets
as={}
s=0
gets.split.each{|e|
  e=e.to_i
  s+=e
  as[e]=(as[e]||0)+1
}
gets
$<.each{|l|
  b,c=l.split.map &:to_i
  if t=as.delete(b)
    s+=t*(c-b)
    as[c]=(as[c]||0)+t
  end
  puts s
}
