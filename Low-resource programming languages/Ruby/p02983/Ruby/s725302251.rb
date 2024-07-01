l, r = gets.split.map(&:to_i)

if r < 2019
  puts l * (l+1)
elsif l <= 2019 && 2019 <= r
  puts 0
else
  if r - l >= 2019
    puts 0
  else
    puts (l % 2019) * ((l+1) % 2019)
  end
end