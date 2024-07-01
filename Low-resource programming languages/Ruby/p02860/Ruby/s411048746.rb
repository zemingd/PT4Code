n = gets.to_i
s = gets.chomp.chars
if n % 2 != 0
  puts "No"
else
  if s[0..(n/2 - 1)].join == s[(n/2)..(n-1)].join
    puts "Yes"
  else
    puts "No"
  end
end

