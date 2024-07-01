input = gets.chomp.split(" ")
x = input[0].to_i
y = input[1].to_i
answer_1 = x * y
answer_2 = x * 2 + y * 2
puts "#{answer_1} #{answer_2}"