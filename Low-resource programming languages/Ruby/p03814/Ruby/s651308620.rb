str = STDIN.gets.chomp

str =~ /A(.*)Z/
puts $&.length