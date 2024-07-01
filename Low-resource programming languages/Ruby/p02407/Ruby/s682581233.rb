d = gets.split('\n')
n = d[0].to_i
as = d.split(' ').collect{|n|n.to_i}

n.times{|i|
 print as[n-i+1]
 print ' '
}
puts