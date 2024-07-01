N = gets.chomp.to_i

count = 0
for n in 1..N do
  seven_count = 0
  five_count = 0
  three_count = 0

  n = n.to_s

  is_753 = true

  for i in 0..(n.length - 1) do
    current_num = n[i].to_i

    seven_count += 1 if current_num == 7 
    five_count += 1 if current_num == 5
    three_count += 1 if current_num == 3

    if current_num != 7 && current_num != 5 && current_num != 3
      is_753 = false
      break
    end
  end

  next unless is_753

  if seven_count >= 1 && five_count >= 1 && three_count >= 1
    count += 1
  end
end

puts count