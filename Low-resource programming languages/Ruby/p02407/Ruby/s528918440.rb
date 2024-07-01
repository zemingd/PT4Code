d = gets.split("\n")
n = d[0].to_i
as = d[1].split(' ').collect{|j|j.to_i}
=begin
n.times{|e|
 print as[n-e-1]
 print(' ') #if e!=n-1
}
=end
puts