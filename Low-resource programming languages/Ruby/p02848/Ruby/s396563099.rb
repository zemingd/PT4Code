N=gets.to_i
s=gets.chomp.split('')

puts s.map{|c|((c.ord-'A'.ord+N)%26+'A'.ord).chr}.join