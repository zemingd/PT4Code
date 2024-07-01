S = gets.chomp.chars

flag = true
3.times do |i|
 flag = false if  S[i] == S[i+1]
end

puts flag ? 'Good' : 'Bad'