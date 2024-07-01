a = gets.strip.split('')
a = a.map do |aa|
  if aa == '1'
    '9'
  elsif aa == '9'
    '1'
  else
    aa
  end
end
puts a.join