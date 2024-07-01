n=gets
a=gets.split.map(&:to_i)
minus=[]
a_1=[]
a.each{|i|
  if i<1
    i=i*(-1)
    minus<< i
  end
  a_1<< i
}
minus=minus.size%2==0?false:true
a_1.sort!
a_0=a_1.shift
p minus ? a_1.inject(:+)-a_0:a.inject(:+)