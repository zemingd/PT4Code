loop do
  m, f, r = gets.chomp.split.map(&:to_i)
  break if m == -1 && f == -1 && r == -1
  sum = m + f
  if m == -1 || f == -1
    puts 'F'
  elsif sum >= 80
    puts 'A'
  elsif sum >= 65
    puts 'B'
  elsif sum >= 50
    puts 'C'
  elsif sum >= 30
    puts r > 50 ? 'C' : 'D'
  else
    puts 'F'
  end
end