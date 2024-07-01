n, m = gets.split.map(&:to_i)
input = Array.new(m)
m.times do |i|
  x, y = gets.split.map(&:to_i)
  input[i] = [x, y, i + 1]
end
sorted = input.sort_by { |x| x[1] }
nums = Array.new(m, 1)
ans = Array.new(m)
sorted.each do |x, y, i|
  ans[i - 1] = "#{x}".rjust(6, "0") + "#{nums[x]}".rjust(6, "0")
  nums[x] += 1
end
ans.each { |x| puts x }