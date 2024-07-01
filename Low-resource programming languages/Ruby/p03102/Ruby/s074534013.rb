data = readlines
nmc = data[0].split(" ")
nmc.map!{|x| x.to_i}
b = data[1].split(" ").map{|x| x.to_i}
a = data[2..-1]
ok = 0
nmc[0].times{|i|
  aa = a[i].split(" ").map{|x| x.to_i}
  sum = 0
  nmc[1].times{|j| sum += aa[j]*b[j]}
  if ((sum + nmc[2]) > 0)
    ok += 1
  end
  }
puts ok