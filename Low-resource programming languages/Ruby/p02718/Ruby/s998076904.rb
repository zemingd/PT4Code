N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

total = A.inject(:+)
low = total / (4 * M).to_f

ret = 'Yes'
sort = A.sort.reverse
M.times do |m|
  if sort[m] < low
    ret = 'No'
    break
  end
end

puts ret