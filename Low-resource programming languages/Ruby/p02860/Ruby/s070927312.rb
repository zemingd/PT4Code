n = gets.chomp.to_i
s = gets.chomp

if (n%2 == 0)
  s1 = s[0..(n/2-1)]
  s2 = s[(n/2)..(n-1)]
  if s1 == s2
    puts "Yes"
  else
    puts "No"
  end
else
  puts "No"
end
