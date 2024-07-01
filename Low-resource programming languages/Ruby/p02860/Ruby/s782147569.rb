n = gets.strip.to_i
s = gets.strip

if n.odd?
  puts 'No'
  return
end

h = n / 2
puts s[0...h] == s[h..n] ? 'Yes' : 'No'