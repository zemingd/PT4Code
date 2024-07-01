s = gets.chomp.split('')
k = gets.to_i
if s.size == 1
  puts s[0]
else
  if s[0] == "1"
    if k == 1
      puts 1
    else
      puts s[1]
    end
  else
    puts s[0]
  end 
end