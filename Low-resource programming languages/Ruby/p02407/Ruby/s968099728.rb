d = gets.split("\n")
n = d[0].to_i
as = d[1].split(' ').collect{|j|j.to_i}

n.times{|i|
 print as[n-i-1]
 print(' ') if i!=n-1
}
puts