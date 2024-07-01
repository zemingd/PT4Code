a, b = gets.split.map(&:to_i)
z = (a * 100) / 8.0

if a > b
  puts '-1'
  exit
end

if (z * 0.1).floor == b
  puts z.floor
else
  puts '-1'
end