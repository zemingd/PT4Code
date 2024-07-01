n = gets.to_i
nums = gets.split.map(&:to_i)

h = Hash.new(0)
nums.each do |i|
  h[i] += 1
end

total = 0

h.each do |k,v|
  total += v * (v-1) / 2
end

nums.each do |i|
  v = h[i]
  diff = (v * (v-1) / 2) - ((v-1) * (v-2) / 2)
  puts total - diff
end