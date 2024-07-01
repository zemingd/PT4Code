n = gets.to_i
S = gets.chomp
puts n.times.map{|i|
  (S[0,i].chars.uniq & S[i,n - i].chars.uniq).uniq.size
}.max
