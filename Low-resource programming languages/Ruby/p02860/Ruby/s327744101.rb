n = gets.strip.to_i
s = gets.strip

if n.odd?
  puts 'No'
  exit
end

h = n / 2
puts s[0...h] == s[h..n] ? 'Yes' : 'No'