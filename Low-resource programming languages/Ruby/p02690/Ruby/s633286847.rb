x = gets.to_i
a = 0
loop do
  a.downto(0).each do |b|
    if a**5 - b**5 == x
      puts [a, b].join(' ')
      exit 0
    elsif a**5 + b**5 == x
      puts [a, -b].join(' ')
      exit 0
    end
  end
  a += 1
end