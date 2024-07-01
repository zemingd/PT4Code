n = gets.to_i
numbers = gets.split(' ').map(&:to_i)
rearranged = Array.new(n)

n.times do |idx|
  rearranged[numbers[idx] - 1] = idx + 1
end

puts rearranged.join(' ')