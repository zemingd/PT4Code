S = gets.chomp

d = ''

S.chars.each do |s|
  if d == s
    puts 'Bad'
    exit
  end
  d = s
end

puts 'Good'
