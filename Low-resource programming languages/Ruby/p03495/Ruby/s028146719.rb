n, k = gets.chomp.split(' ').map(&:to_i)
nums = gets.chomp.split(' ').map(&:to_i)

h = Hash.new(0)
nums.each do |num|
  h[num] += 1
end

info = h.sort_by { |_num, count| count }
decrease_count = info.size - k
answer = 0
decrease_count.times do |i|
  answer += info[i].last
end

puts answer