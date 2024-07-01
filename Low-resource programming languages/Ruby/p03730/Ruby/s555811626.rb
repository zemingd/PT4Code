a, b, c = gets.chomp.split.map(&:to_i)
f_c = a % b
i = 2
loop do
  if a * i % b == f_c
    puts 'NO'
    break
  end
  if a * i % b == c
    puts 'YES'
    break
  end
  i += 1
end
