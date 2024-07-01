n=gets.to_i
s=gets.chomp
a="A".ord
puts s.split("").map{|c|((c.ord-a+n)%26+a).chr}.join