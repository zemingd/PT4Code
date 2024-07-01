input = gets.chomp
count = input.length
f_chr = input[0]
l_chr = input[count - 1]

puts "#{f_chr}#{count - 2}#{l_chr}"