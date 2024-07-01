_n, M = gets.split.map(&:to_i)
arr = []
M.times do |i|
  p, y = gets.split.map(&:to_i)
  arr << [p, y]
end
nums = {}
(1..M).each do |i|
  arr.select{|a| a[0] == i}.sort_by{|b|b[1]}.each_with_index do |c, num|
    nums[c] = num + 1
    puts i
  end
end
arr.each do |v|
  puts format("%06d%06d", v[0], nums[v])
end
