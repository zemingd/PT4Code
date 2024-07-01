a, b, c, d = gets.split.map(&:to_i)

while true
  if a <= 0
    puts 'No'
    exit
  end
  c -= b

  if c <= 0
    puts 'Yes'
    exit
  end

  a -= d
end

