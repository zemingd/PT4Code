m,start=gets.split.map(&:to_i)
city=gets.split.map{|n| n=n.to_i;(n-start).abs}

city.sort!
p city[0]