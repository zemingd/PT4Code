row,column = gets.chomp.split(" ").map(&:to_i)
res = 0
odd_row = 0
even_row = 0

if row <= 1
  odd_row = 1
elsif row % 2 == 0
  odd_row = row / 2
  even_row = row / 2
elsif row % 2 == 1
  odd_row = row / 2 + 1
  even_row = row / 2
end

if row == 1
  res = 1
else
  if column > 2 and column.odd?
    res += (column / 2 + 1) * odd_row
  elsif column > 2 and column.even?
    res += (column / 2) * odd_row
  elsif column <= 2
    res += 1 * odd_row
  end

  if column >= 2 and column.even?
    res += (column / 2) * even_row
  elsif column >= 2 and column.odd?
    res += (column / 2) * even_row
  elsif column == 1
    res += 0
  end
end

puts res