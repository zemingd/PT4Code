n = gets.to_i

if n.size >= 2
  n %= 10
  if n == 0 || n == 1 || n == 6 || n == 8
    puts "pon"
  elsif n == 3
    puts "bon"
  else
    puts "hon"
  end
else
  if n == 0 || n == 1 || n == 6 || n == 8
    puts "pon"
  elsif n == 3
    puts "bon"
  else
    puts "hon"
  end
end
