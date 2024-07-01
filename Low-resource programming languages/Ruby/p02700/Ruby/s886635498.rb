a, b, c, d = gets.split.map(&:to_i)
i = 0
loop do
  if i % 2 == 0
    c -= b
    if c <= 0
      puts 'Yes'
      exit
    end
  else
    a -= d
    if a <= 0
      puts 'No'
      exit
    end
  end
  i += 1
end
