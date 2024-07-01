s = gets.chomp
k = gets.chomp.to_i

if k == 1 then
  puts s[0]
else
  ones = 0
  s.each_char do |c|
    ones += 1 if c == "1"
    break if c != "1"
  end
  if k <= ones then
    puts "1"
  else
    puts s[ones]
  end
end