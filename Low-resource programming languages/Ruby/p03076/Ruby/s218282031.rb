a = []
STDIN.each{|x|
  data1 = x.chomp.to_i
  data2 = 10-(data1%10)
  if data2 == 10
    data2 = 0
  end
  a.push([data1, data2])
  }
a.sort!{|x,y| x[1]<=>y[1]}
sum = 0
a[0..3].each{|x|
  sum += x[0]+x[1]
  }
sum += a[4][0]
puts sum