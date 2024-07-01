k=gets.to_i
a,b=gets.split.map(&:to_i)
puts (a..b).find{|x| x % k == 0} ? "OK" : "NG"