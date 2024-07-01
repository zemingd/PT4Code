str = gets.chomp

res = ''
str.each_char.with_index do |c, i|
  case c
  when 'B'
    res.chop!
  else
    res << c
  end
end
puts res
