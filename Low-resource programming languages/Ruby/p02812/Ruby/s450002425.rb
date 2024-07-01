N=gets.to_i
S=gets
puts (0..N-3).to_a.map{|i|S[i,3]}.select{|s|s=='ABC'}.count
