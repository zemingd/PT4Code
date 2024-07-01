N, M = gets.chop.split.map(&:to_i)
A = gets.chop.split(' ').map(&:to_i)

sorted = A.sort.reverse
sum = A.sum

flag = true

M.times do |i|
  if sorted[i] < sum / (4 * M)
    flag = false
    break
  end
end

puts flag ? 'Yes' : 'No'
