n=gets.to_i
s=gets.chomp
a="A".ord
puts s.split("").map{|c|((c.ord+n)%26).chr}.join
