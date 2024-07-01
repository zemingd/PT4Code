S = gets.chomp

if S.chars.each_cons(2).any? { |list| list.uniq.size == 1 }
  puts 'Bad'
else
  puts 'Good'
end
