a,b = gets.split.map(&:to_i)
puts ((a>1&&b>1)||(a<0&&b<=0)) ? a*b : a+b.abs