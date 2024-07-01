number = gets.to_i
string = gets.chomp.split('')

if number%2 == 0
  a = string[0..(number/2)-1]
  b = string[(number/2)..string.length-1]
  if a==b
    puts "Yes"
  else
    puts "No"
  end
else
  puts "No"
end