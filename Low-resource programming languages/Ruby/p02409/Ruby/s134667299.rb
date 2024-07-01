d=Array.new(4*3*10,0)
gets
while gets
  b,f,r,v=$_.split.map &:to_i
  d[(b-1)*30+(f-1)*10+r-1]+=v
end
4.times{|b|
  3.times{|f|puts " "+d[b*30+f*10,10]*" "}
  puts ?#*20
}
