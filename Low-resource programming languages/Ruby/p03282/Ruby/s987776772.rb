s = gets.chomp.split('')
k = gets.to_i
if k == 1
  if s[0] != 1
    puts s[1]
  else
    puts 1 
  end
else
  puts s[1]
end