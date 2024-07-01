n = gets.to_i
results = {}
n.times do
  str = gets.chomp.chars.sort.join
  if results[str].nil?
    results[str] = 1
  else
    results[str] += 1
  end
end

sum = 0
results.each do |key, value|
  if value >= 2
    sum += value * (value-1) / 2
  end
end

puts sum