a, b, c, d = gets.chomp.split.map(&:to_i)

loop do
  c -= b
  if c <= 0
    puts 'Yes'
    break
  end
  a -= d
  if a <= 0
    puts 'No'
    break
  end
end