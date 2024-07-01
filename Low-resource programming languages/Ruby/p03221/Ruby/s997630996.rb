n,m = gets.split.map &:to_i

py = m.times.map{gets.split.map &:to_i}
a = (n+1).times.map{[]}

py.each{|(o,y)|
  a[o]<<y
 }

a.size..times{|i|
  a[i].sort!
}

py.each{|(o,y)|
  tmp = a[i].index(y)+1
  s = (o+1000000)[1..-1]
  t = (tmp+1000000)[1..-1]
  puts s+t
}