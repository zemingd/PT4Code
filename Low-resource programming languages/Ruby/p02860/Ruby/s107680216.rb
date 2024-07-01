n = gets.chomp.to_i
str = gets.chomp
s = str.split('')
sh = ""
if n == 1
  puts "No"
else
  n = n/2
  i = 0
  while i < n
    sh += s[i]
    i += 1
  end
  if sh*2 == str
    puts "Yes"
  else
    puts "No"
  end
end