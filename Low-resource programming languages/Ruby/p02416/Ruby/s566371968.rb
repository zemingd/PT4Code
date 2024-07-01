loop do
x=gets.chomp
break if x=='0'

puts x.chars.inject(0){|x,s| s + x.to_i}
end