a,b,c=gets.split.map(&:to_i)
p (a..b).select{|i|c%i==0}.size
