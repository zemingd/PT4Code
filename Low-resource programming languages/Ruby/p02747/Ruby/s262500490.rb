str = gets.chomp

flag = false
if str == 'hi' ||
  str == 'hihi' ||
  str == 'hihihi' ||
  str == 'hihihihi' ||
  str == 'hihihihihi'
  flag = true
end

if flag
  print('Yes')
else
  print('No')
end