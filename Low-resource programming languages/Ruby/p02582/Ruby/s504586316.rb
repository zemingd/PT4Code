s = gets.split('')
sum = s[0] == 'R' ? 1 : 0
2.times do |i|
  if s[i + 1] == 'R'
    sum += 1
  end
end
puts sum