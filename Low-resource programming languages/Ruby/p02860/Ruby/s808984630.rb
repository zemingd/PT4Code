n = gets.chomp.to_i
s = gets.chomp

if n.odd?
  puts 'No'
elsif s.slice(0,n/2) == s.slice(n/2,n)
  puts 'Yes'
else
  puts 'No'
end