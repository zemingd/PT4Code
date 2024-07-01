n=gets.to_i
ans=0
1.step(n,2){|i|
  num=0
  1.upto(i){|j|
    num+=1 if i%j==0
  }
  ans+=1 if num==8
}
puts ans