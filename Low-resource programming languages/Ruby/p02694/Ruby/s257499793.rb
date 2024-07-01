X = gets.to_i

yokin = 100
count = 0
loop do
  if yokin >= X
    puts count
    exit
  end

  count += 1
  yokin += yokin / 100
end
