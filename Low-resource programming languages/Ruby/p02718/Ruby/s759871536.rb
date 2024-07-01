n,m,*as=`dd`.split.map &:to_i
puts 4*m*(as.sort.reverse.first(m).min) < as.reduce(:+) ? "No" : "Yes"