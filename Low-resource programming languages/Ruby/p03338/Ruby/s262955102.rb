gets
s=gets
p (0..s.size-3).map{|i|(s[0..i].chars&s[i+1..-2].chars).size}.max
