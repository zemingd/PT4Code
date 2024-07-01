gets.to_i
str = gets.chomp
str.slice!(/^[\.]*/)
arr = []
puts arr.push(str.count('.'))
arr.push(str.count('#'))
arr.push(str.slice!(/[#]*$/).count('.'))
puts arr.min