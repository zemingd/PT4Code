n = gets.to_i
as = gets.split.map(&:to_i)

count = 0 # gte 3200
ans = as.each_with_object([]) do |a, arr|
  if a < 3_200
    arr << a / 400
  else
    count += 1
  end
end.uniq

min = ans.count > 0 ? ans.count : 1
max = ans.count + count

puts [min, max].join(" ")
