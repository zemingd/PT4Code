n=gets.to_i
a=gets.split.map(&:to_i)
x=[];y=[]

x[0]=a[0]
y[n-1]=a[-1]
(1..n-1).each{|i|
    x[i]=x[i-1].gcd a[i]
    y[n-1-i]=y[n-i].gcd a[n-1-i]
}
p [(1..n-2).map{|i|x[i-1].gcd y[i+1]}.max,x[-2],y[1]].compact.max