n=gets.to_i
s=gets.chomp
p (n-1).times.map {|i| (s[0..i].chars&s[i+1..-1].chars).length}.max
