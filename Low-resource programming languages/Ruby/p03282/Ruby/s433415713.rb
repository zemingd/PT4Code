s = gets.chomp
k = gets.to_i

if k == 1
  puts s[0].to_i
else
  if s[0].to_i == 1
    puts s[1].to_i
  else
    puts s[0].to_i
  end
end

