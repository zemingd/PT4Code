S = gets.chomp.chars
puts S.each_cons(2).none? {|a, b| a == b} ? 'Good' : 'Bad'
