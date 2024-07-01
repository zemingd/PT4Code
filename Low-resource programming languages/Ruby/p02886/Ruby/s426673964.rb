n = gets.strip.to_i
tako = gets.strip.split.map(&:to_i)

count = 0
for x in (0..(n - 2)) do
  for y in ((x + 1)..(n - 1)) do
    count += tako[x] * tako[y]
  end
end

puts count