N = gets.to_i
A = (1..N).map{0}
$<.read.split.each {|n| A[n.to_i-1]+=1}
puts A