N, M = gets.split.map(&:to_i)
lr_list = M.times.map { gets.split.map(&:to_i) }
table = Array.new(N + 1) { 0 }
lr_list.each do |(l, r)|
  table[l - 1] += 1
  table[r] -= 1
end
(0...N).each { |i| table[i + 1] += table[i] }
ans = table.count { |n| n == M }
puts ans
