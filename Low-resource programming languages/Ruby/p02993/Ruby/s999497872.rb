s = gets.chomp.split('')

cache = ''
flg = false
s.each do |char|
  if char == cache
    flg = true
  end
  cache = char
end

if flg
  puts 'Bad'
else
  puts 'Good'
end