n = gets.to_i
number_counts = {}
count = 0

n.times do
  num = gets.to_i
  if (number_counts[num]).nil? || number_counts[num] == 0
    number_counts[num] = 1
  else
    number_counts[num] = 0
  end
end

number_counts.each_value do |i|
  if i == 1
    count += 1
  end
end

puts count