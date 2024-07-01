str = gets.chomp.split(" ")
a = [str[0].to_i,str[1].to_i,str[2].to_i]
p = a.sort
puts "#{p[0]} #{p[1]} #{p[2]}"