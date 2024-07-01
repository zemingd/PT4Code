n, m = gets.chomp.split.map(&:to_i)
arr = []
m.times do |i|
  p, y = gets.chomp.split.map(&:to_i)
  arr.push([i, p, y, nil])
end
arr.sort_by! { |a| a[2] }

counts = Array.new(n, 1)
m.times do |i|
  arr[i][3] = counts[arr[i][1] - 1]
  counts[arr[i][1] - 1] += 1
end
arr.sort!

arr.each do |a|
  puts format('%06d', a[1]).concat(format('%06d', a[3]))
end
