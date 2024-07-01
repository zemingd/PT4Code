n,y=gets.split.map(&:to_i)
ans=[0,0,0]
ok=false
0.upto(n) { |i|
  0.upto(n-i) { |j|
    k=n-i-j
    if i*1000+j*5000+k*10000 == y
      ans = [k,j,i]
      ok=true
      break
    end
  }
  break if ok
}
puts ok ? ans*" " : [-1]*3*" "
