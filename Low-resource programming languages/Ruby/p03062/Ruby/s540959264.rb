n=gets
a=gets.split.map(&:to_i)
minus=false
a_1=[]
a.each{|i|
  if i<0
    i=i*(-1)
    minus=true
  end
  a_1<< i
}
a_1.sort!
a_0=a_1.shift
p minus ? a_1.inject(:+)-a_0:a.inject(:+)