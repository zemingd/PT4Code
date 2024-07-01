d, t, s = gets.split.map(&:to_i)
min = 0

if d % s > 0
  min = (d / s) + 1
else
  min = d / s
end

if min <= t
  puts "Yes"
else
  puts "No"
end
