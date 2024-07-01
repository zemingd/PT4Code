k = gets.chomp.to_i

if k.odd?
  puts k/2 * (k/2 + 1)
else
  puts k/2 * k/2
end
