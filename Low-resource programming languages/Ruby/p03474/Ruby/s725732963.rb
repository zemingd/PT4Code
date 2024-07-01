a, b = gets.chomp.split(' ')
s = gets.chomp

if s.length != a + b + 1
    puts("No")
elsif s[a] != '-'
    puts("No")
else 
  flag = true
  s.each_with_index do |c, i|
    if i != a and (c < '0' || '9' < 0)
      flag = false
      break
    end
    if i == a and c != '-'
      flag = false
      break
    end
  end
  if flag
    puts "Yes"
  else
    puts "No"
  end
end
  
        

	
  