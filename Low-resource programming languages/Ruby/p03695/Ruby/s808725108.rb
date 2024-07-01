n = gets.to_i
as = gets.split.map(&:to_i)
rates = 8.times.map { |i| (i * 400...(i + 1) * 400) }

count = 0 # gte 3200
ans = as.each_with_object([]) do |a, arr|
  if a < 3200
    arr << rates.index { |r| r.include?(a) }
  else
    count += 1
  end
end.uniq

puts [ans.count, ans.count + count].join(" ")
