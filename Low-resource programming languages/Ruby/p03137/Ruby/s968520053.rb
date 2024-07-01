n,m=gets.split.map(&:to_i)
xs=gets.split.map(&:to_i)
xs.sort!
xs=xs.each_cons(2).map {|x1, x2| (x2-x1).abs }
xs.sort!
p xs.first(m-n).inject(:+)