n,m,*as=`dd`.split.map &:to_i
puts as.max >= as.reduce(0) { |sum, i| sum + i }/(4*m) ? "Yes" : "No"