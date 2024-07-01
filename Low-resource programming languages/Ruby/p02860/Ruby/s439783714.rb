a = gets.to_i
b = gets.to_s


if a%2 == 0
  c = b.scan(/.{1,#{a/2}}/)
  if c[0] == c[1]
    answer = 'Yes'
  else
    answer = 'No'
  end
else
  answer = 'No'
end

puts answer
