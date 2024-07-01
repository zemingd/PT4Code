n=gets.chomp.to_i
s=gets.chomp

a=('A'..'Z').to_a
s.length.times{|i| s[i]=a[(a.index(s[i])+n)%26] }
puts s