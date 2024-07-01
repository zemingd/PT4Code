L, R = gets.split.map(&:to_i)
if ((R / 2019) * 2019).between?(L, R)
  puts 0
else
  puts (L%2019) * (L%2019 + 1)
end
