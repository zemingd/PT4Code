s = gets.chomp.chars
k = gets.to_i

i = 0
while s[i] == '1'
  i += 1
end

if k <= (i + 1)
  puts '1'
else
  puts s[i]
end

