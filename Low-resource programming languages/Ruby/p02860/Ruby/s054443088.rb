n = gets.to_i
s = gets.chomp
if n % 2 == 1
  puts 'No'
else
  a = s[0...(s.size/2)]
  b = s[(s.size)/2..-1]
end
puts s == (a + b) ? 'Yes' : 'No'
