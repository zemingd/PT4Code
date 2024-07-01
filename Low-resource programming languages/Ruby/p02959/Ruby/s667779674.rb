n=gets.to_i
a=gets.split.map(&:to_i)
b=gets.split.map(&:to_i)
c=0
(n-1).downto(0){|i|
1.downto(0){|k|
  if a[i+k]>=b[i]
    c+=b[i]
    a[i+k]-=b[i]
    b[i]=0
  else
    c+=a[i+k]
    b[i]-=a[i+k]
    a[i+k]=0
  end
}
}
puts c
