N, M = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)
arr.sort_by!{|x|x}
# p arr
dist = []
1.upto(M-1) do |i|
  dist << (arr[i] - arr[i-1]).abs
end
if dist.empty? || dist.size <= N - 1
  puts 0
  exit
end

dist.sort_by!{|x|-x}
# p dist
puts dist[(N-1)..-1].inject(:+)
