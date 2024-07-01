n = gets.to_i
s = gets.chomp

al = [*"A".."Z"]
puts s.each_char.map{|c|al[(al.index(c)+n)%26]}*""