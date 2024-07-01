Y = Array.new
loop{
  k=Array.new
  k[0],k[1]=gets.split(' ').map{|v|v=v.to_i}
  Y.push(k) if k!=[0,0]
  break if k==[0,0]
}
X=[]
0.upto(Y.length-1){|s|
  x=[]
  y=Y[s]
  h=y[0]
  w=y[1]
  1.upto(w){|t|
    x.push("#")
    X.push(x)
  }
  1.upto(h){|u|
    puts x.join
  }