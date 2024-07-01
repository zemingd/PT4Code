a, b, c, d = gets.split.map(&:to_i)

while (a > 0 or c > 0) do
  c -= b
  if c < 1
    puts "Yes"
    break
  end
  a -= d
  if a < 1
    puts "No"
    break
  end
end