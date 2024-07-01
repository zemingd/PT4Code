n = gets.to_i
s = gets.chomp

if n % 2 == 0
  str1 = s[0..n/2-1]
  str2 = s[(n/2)..(n-1)]
  if str1 == str2
    puts 'Yes'
  else
    puts 'No'
  end
else
  puts 'No'
end