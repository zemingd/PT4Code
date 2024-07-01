n = gets.chomp.to_i
s = gets.chomp

if n.odd?
  puts 'No'
else
  a = s[0..n/2-1]
  b = s[n/2..n-1]

  if a == b
    puts 'Yes'
  else
    puts 'No'
  end
end
