loop do
g=gets.chomp
break if g=='0'

puts g.chars.to_a.inject(0){|x,s| s + x.to_i}
end