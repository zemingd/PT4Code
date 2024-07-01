x, n = gets.chomp.split(" ").map(&:to_i)
p = gets.chomp.split(" ").map(&:to_i)
if n == 0
  puts x
  exit
end
min = [p.min, x].min
max = [p.max, x].max
arr = (min..max).select { |n| !p.include?(n) }
m = arr.min_by { |n| (n - x).abs }
if m.nil?
  puts p.min - 1
else
  puts m
end
