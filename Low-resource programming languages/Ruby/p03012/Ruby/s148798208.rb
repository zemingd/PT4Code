n=gets.to_i
a=gets.split.map &:to_i
p (1...n).map{|i| (a[0, i].inject(:+)-a[i, n-i].inject(:+)).abs}.min
