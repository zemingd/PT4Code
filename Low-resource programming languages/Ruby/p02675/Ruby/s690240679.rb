i = gets.chomp.to_i
puts honponbon(i)

def honponbon(n)
  i = n.to_s[-1]
  return 'hon' if %w[2 4 5 7 9].include? i
  return 'pon' if %w[0 1 6 8].include? i
  'bon'
end