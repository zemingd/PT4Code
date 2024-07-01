
while true
x = gets.chomp.split.map(&:to_i)
break if x == 0
end

puts x.inject(:+)

end

