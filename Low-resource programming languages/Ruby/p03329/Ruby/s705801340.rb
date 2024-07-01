a=[0,1]
2.upto(n=gets.to_i){|i|
  l=[]
  p=3
  2.times{
    p+=3
    d=1
    l<<a[i-d]until(d*=p)>i
  }
  l<<a[i-1]
  a[i]=l.min+1
}
p a[n]