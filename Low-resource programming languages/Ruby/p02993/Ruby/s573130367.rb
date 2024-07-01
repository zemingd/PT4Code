s = gets.chomp.split(//)
s.each_cons(2) do |ss|
  if ss[0] == ss[1]
    puts 'Bad'
    exit
  end
end
puts 'Good'
