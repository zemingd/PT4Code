loop {
s = gets.chomp
break if s =~ /\?/
puts eval(s)
}