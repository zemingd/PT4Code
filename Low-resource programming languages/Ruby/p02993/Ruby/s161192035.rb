io = STDIN
s=io.gets.split(//)
if s.each_cons(2).any?{|a,b|a==b}
  puts 'Bad'
else
  puts 'Good'
end
