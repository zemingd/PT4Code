gets.to_i
str = gets.chomp
str.slice!(/^[\.]*/)
str.slice!(/[\#]*$/)

puts [str.count('.'), str.count('#')].min