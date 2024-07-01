s = gets.chomp.split('')

puts (0..3).count { |i| s[i] == s[i+1] } == 0 ? 'Good' : 'Bad'
