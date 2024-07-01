loop do
  a, b, c = gets.split(' ')
  break if b == '?'
  a = a.to_i
  c = c.to_i
  ans =
  case b
  when '+' then a + c
  when '-' then a - c
  when '*' then a * c
  when '/' then a / c
  end
  puts ans
end