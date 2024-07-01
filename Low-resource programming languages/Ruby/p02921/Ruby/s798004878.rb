t=gets.chomp.chars
s=gets.chomp.chars
puts t.zip(s).select{|v|v[0]==v[1]}.size