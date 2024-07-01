i = gets.to_i

if i <= 5
  puts 1
elsif i <= 11
  puts 2
else
  s = i / 11
  d = i % 11
  s *= 2
  if d <= 5
    s += 1
  else
    s += 2
  end
  puts s
end


