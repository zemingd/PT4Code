
while true
x = gets.chomp
break if x == 0
end

x = x.split.map(&:to_i)
puts s.inject(:+)

end

