a,b,c=gets.split.map(&:to_i)
puts (a..b).to_a.select{|n| n % c == 0}.size