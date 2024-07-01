gets
s=gets.chomp.chars.to_a
puts s.size.times.map{|i| (s[0,i].uniq & s[i,s.size].uniq).size}.max