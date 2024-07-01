N=gets.to_i

yaku = []

(1..[[(N/2),100000].min, 1].max).each{|i|
  yaku<<i if N%i==0
}

min = 11 #てきとう

yaku.each{|t|
  a = t.to_s.size
  b = (N/t).to_s.size
  a = b if b > a 
  min = a if a < min
}

puts min