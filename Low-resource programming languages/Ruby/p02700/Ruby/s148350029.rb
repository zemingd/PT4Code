a, b, c, d = gets.chomp.split.map(&:to_i)

i = 0
while true
  if i.even?
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
