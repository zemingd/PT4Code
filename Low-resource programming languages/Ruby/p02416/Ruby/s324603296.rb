
while true
x = gets.split.map(&:to_i)
break if x == 0

puts Math.log10(x).to_i + 1

end