
K = gets.to_i
#res  = []
#100000.times{|i|
##  res << (i+1)/digit_sum(i+1).to_f
#}
#puts res
res = [*1..9]
res = res.concat([*1..9].map{|i| i*10+9})
res = res.concat([*1..9].map{|i| i*100+99})
((K-27)/90+1).times{|n|
  base = 10**(n+2)
  [*1..9].each{|i|
    [*0..9].each{|j|
      res << j*base+i*base*10+base-1
    }
  }
}
if res.max > 10*14
  [*1..2].each{|j|
    [*0..9].each{|i|
      res << (10**14*j+10**12-1+i*10**12)
    }
  }
end
puts res.sort[0..(K-1)]
