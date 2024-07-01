s = gets.chomp.split('').map(&:to_s)

flag =0
i = 0
(s.size-1).times do
  
  if s[i] == 'h' && s[i + 1] == 'i'
    i += 2
  else
    
    flag = 1
    break
  end
end

if flag == 1
  puts'No'
else
  puts 'Yes'
end