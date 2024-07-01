a, b, c = gets.split(' ').to_i
if a + b + c ==17
    if a == 7 && b == c
    puts 'YES'
  elsif b == 7 && a == c
    puts 'YES'
  elsif c == 7 && a == b
    puts 'YES'
  else
    puts 'NO'
  end
else
  puts 'NO'
end