N, M = gets.split.map(&:to_i)
AB = M.times.map { gets.split.map(&:to_i) }

sorted = AB.sort_by { |a, b| [a, -b] }
right = -(1 << 60)
removed_count = 0
sorted.each do |a, b|
  if a >= right
    removed_count += 1
    right = b
  elsif b < right
    right = b
  end
end
puts removed_count