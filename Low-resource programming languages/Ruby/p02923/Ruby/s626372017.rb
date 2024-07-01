N = gets.chomp!.to_i
cells = gets.chomp!.split(" ").map! { |i| i.to_i }
count = 0
max_count = 0
(N - 1).times do |i|
  if cells[i] >= cells[i + 1]
    count += 1
  else
    count = 0
  end
  max_count = count if count > max_count
end
puts max_count
