s=gets.chomp
k=gets.to_i
q=(1...[k,s.size].min).find{|i|s[i]!=?1}
puts q ? s[q] : 1