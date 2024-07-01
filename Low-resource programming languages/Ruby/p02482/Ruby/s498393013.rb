a, b = gets.split.map &:to_i
case a<=>b
when 1
  puts 'a > b'
when 0
  puts 'a == b'
else
  puts 'a < b'
end