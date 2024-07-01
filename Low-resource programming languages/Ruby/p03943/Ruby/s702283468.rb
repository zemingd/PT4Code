s = gets.chomp.split(' ')
a = s[0].to_i
b = s[1].to_i
c = s[2].to_i

  if (a+b)==c || (a+c)==b || (b+c)==a then
    puts"Yes"
  else
    puts"No"
  end
  
