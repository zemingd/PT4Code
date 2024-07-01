a,b=gets.split.map(&:to_i)
puts (a..b).count{|x| x.to_s == x.to_s.reverse}