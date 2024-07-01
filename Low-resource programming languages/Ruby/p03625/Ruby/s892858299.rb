N = gets.to_i
as = gets.split

counts = Hash.new(0)

as.each do |a|
  counts[a] += 1
end

counts = counts.select { |k, v| v >= 2 }.sort { |a, b| b[0].to_i <=> a[0].to_i }

x = 0
y = 0
if counts.empty?
elsif counts[0][1] >= 4
  x = counts[0][0].to_i
  y = counts[0][0].to_i
else
  x = counts[0][0].to_i
  y = counts[1][0].to_i
end

puts x * y
