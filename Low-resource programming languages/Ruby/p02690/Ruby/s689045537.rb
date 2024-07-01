x = gets.to_i
50.times do |i|
  next if (i ** 5 - x) % 5 != 0

  i.downto(0).each do |a|
    b = a - i
    if a ** 5 - b ** 5 == x
      puts [a, b].join(' ')
      exit 0
    end
  end
end