n = gets.to_i
s = gets.to_s
if s.length > 1
  x = s.scan(/.{1,#{n/2}}/)
  puts x[0] == x[1] ? 'Yes' : 'No'
else
  puts 'No'
end