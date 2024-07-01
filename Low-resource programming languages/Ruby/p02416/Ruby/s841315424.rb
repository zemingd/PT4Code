
while true
s = gets.chomp.split.map{|x| x.to_i}
break if s == 0
end

puts s.inject(:+)

end

