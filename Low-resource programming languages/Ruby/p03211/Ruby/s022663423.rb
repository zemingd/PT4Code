s = gets.chop
ans = 1000
(0..s.length-3).each{|i| ans = [ans, (s[i..i+2].to_i - 753).abs].min}
p ans