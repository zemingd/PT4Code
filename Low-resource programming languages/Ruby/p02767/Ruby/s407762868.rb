n=gets.to_i
a=gets.split.map(&:to_i).sort
c=(a.inject(:+).to_f/n).round
s=a[0]
m=a[-1]
x=1000000
y=1000000
c.upto(m){|i|w=a.map{|i|(i-c)**2}.inject(:+)
  if x>w
    x=w
  else
    break
  end
  }
c.downto(s){|i|w=a.map{|i|(i-c)**2}.inject(:+)
  if y>w
    y=w
  else
    break
  end
  }
puts [x,y].min