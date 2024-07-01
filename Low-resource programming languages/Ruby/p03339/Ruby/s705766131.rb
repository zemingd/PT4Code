n = gets.to_i
s = gets.chomp
min = n
(0...n).each do |i|
  min = [min,s[0,i].count("W") + s[i+1,n-(i+1)].count("E")].min
end
puts min