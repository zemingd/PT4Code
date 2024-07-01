n,m = gets.split.map(&:to_i)

py = m.times.map{gets.split.map(&:to_i)}
a = (n+1).times.map{[]}

py.each{|(o,y)|
  a[o]<<y
 }

a.size.times{|i|
  a[i].sort!
}

py.each{|(o,y)|
  ub,lb = a[o].size,0
  30.times{
    mid = (ub+lb)/2
    if a[o][mid]<y
      lb = mid
    else
      ub = mid
    end
  }
  s = (o+1000000).to_s[1..-1]
  t = (ub+1+1000000).to_s[1..-1]
  puts s+t
}
