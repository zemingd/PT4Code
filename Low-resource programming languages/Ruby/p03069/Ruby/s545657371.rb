n = gets.to_i
ary = gets.chomp.split("")

return puts 0 unless ary.include?('#')

ary.shift
ary.delete('#')

puts ary.size