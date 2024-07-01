a,b,c,x=4.times.map{gets.to_i}
ans=0
(a+1).times{ |i|
  (b+1).times{ |j|
    (c+1).times{ |k|
      ans+=1 if i*500+j*100+k*50==x
    }
  }
}
p ans
