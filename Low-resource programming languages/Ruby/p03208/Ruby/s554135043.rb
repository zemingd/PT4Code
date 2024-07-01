n,k,*h=`dd`.split.map &:to_i
h.sort!
puts (k..n).map{|i| h[i-1]-h[i-k]}.min