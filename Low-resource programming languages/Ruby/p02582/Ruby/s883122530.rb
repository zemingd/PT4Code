s = gets.split('')
bef = 0
sum = 0
if s[0] == 'R'
  bef += 1
  sum += 1
end

2.times do |i|
  if s[i + 1] == 'R' && bef == 1
    sum += 1
    bef = 1
  else
    bef = 0
  end
end
puts sum