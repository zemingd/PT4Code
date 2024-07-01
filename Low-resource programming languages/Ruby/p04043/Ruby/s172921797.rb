a = gets.split.map(&:to_i).sort
if a.sum == 17
  if a[0] == 5 && a[1] == 5
    puts 'YES'
  else
    puts 'NO'
  end
else
  puts 'NO'
end