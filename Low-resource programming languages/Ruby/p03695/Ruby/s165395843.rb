n = gets.to_i
as = gets.split.map(&:to_i)
rates = 8.times.map { |i| (i * 400...(i + 1) * 400) }

count = 0
ans = as.each_with_object([]) do |a, arr|
  if a >= 3200
    count += 1
  else
    arr << rates.index { |r| r.include?(a) }
  end
end.uniq

min = ans.count > 0 ? ans.count : 1
max = ans.count + count
puts [min, max].join(" ")
