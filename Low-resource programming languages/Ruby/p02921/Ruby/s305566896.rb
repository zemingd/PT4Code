S, T = 2.times.map{gets.chomp.chars}
p S.zip(T).select{|a, b| a==b}.count