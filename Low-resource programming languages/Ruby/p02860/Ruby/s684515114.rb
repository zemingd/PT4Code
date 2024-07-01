n = gets.to_i
s = gets.chomp

if n % 2 == 0
  tmp = s.slice!(0..(n / 2 - 1))
  if tmp == s
    puts "Yes"
  else
    puts "No"
  end
else
  puts "No"
end