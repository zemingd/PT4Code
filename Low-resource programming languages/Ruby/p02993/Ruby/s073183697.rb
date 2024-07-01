s = gets.chomp

prev = ''
s.each_char do |ch|
  if prev == ch
    puts 'Bad'
    exit
  end
  prev = ch
end
puts 'Good'
