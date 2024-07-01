loop do
  m, f, r = gets.split.map(&:to_i)
  break if m == -1 && f == -1 && r == -1

  p = m + f

  if m == -1 || f == -1 || p < 30
    puts 'F'
  elsif p >= 80
    puts 'A'
  elsif p >= 65 && p < 80
    puts 'B'
  elsif (p >= 50 && p < 65) || r >= 50
    puts 'C'
  else
    puts 'D'
  end
end

