n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)
memo = {}
n.times.with_index do |i|
  memo[i+1] = 0
end

a.each do |boss|
  memo[boss] += 1
end

memo.sort.each do |arr|
  puts arr[1]
end