n = gets.to_i
s = gets.chomp

if n.odd?
  puts 'No'
elsif s[0...n/2] * 2 == s
  puts 'Yes'
else
  puts 'No'
end
