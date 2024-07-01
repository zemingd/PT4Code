n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

sum = a.inject(:+)
cnt = 0
a.each do |num|
  if num >= sum / (4 * m).to_f
    cnt += 1
  end
end
if cnt >= m
  puts "Yes"
else
  puts "No"
end
