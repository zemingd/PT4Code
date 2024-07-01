n=gets.to_i
s=gets.chomp
puts (n-1).times.map{|i|
((s[0..i].chars.to_a)&(s[i+1...n].chars.to_a)).size
}.max