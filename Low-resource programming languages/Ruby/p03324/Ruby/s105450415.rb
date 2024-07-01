d, n = gets.chomp.split.map(&:to_i)

if d == 0
  if n != 100
    puts n
  else
    puts 101
  end
elsif d == 1
  if n != 100
    puts n * 100
  else
    puts 10100
  end
elsif d == 2
  if n != 100
    puts n * 10000
  else
    puts 1010000
  end
end
