n = gets.to_i

ans = 0
n.times{|i|
  i += 1
  next if i%2==0
  a = 0
  i.times{|j|
    a += 1 if i%(j+1)==0
  }
  ans += 1 if a==8
}

p ans
