n, k = gets.chomp.split(' ').map(&:to_i)
nums = gets.chomp.split(' ').map(&:to_i)

h = {}
nums.each do |num|
  next if h[num]
  h[num] = nums.count(num)
end

info = h.sort_by { |num, count| count }
decrease_count = info.size - k
answer = 0
decrease_count.times do |i|
  answer += info[i].last
end

puts answer