loop do
s=gets.chomp
break if s.include? "?"
puts eval(s)
end